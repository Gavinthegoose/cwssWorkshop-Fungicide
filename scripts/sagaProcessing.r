## SAGA Processing, since QGIS did not work when initially attempting to create these files. QGIS has since been updated to work.
## Script to process the K-Means for Grids Function in SAGA


### Load Data ###
root <- "/home/walker/gavinthegoose/cwssWorkshop_fung"
ndviFolder <- paste0(root, "/workingFiles/kernen/c1/raster/ndvi")
dir.exists(ndviFolder)
scratch <- "/scratch"
### Grab NDVI ###
ndviFiles <- Sys.glob(paste0(ndviFolder, "/*.tif"))
ndviFiles


### Convert to SAGA Grid ###

sagaGrds <- list()

for (x in ndviFiles){

fileSplit <- strsplit(x, "/")

location <- fileSplit[[1]][10]

date <- strsplit(fileSplit[[1]][13], "_")[[1]][2]
date

out.grid <- paste0(scratch,"/",location, "_", date)

RSAGA::rsaga.import.gdal(
    in.grid = x,
    out.grid = out.grid 
)

sagaGrds[[length(sagaGrds) + 1]] <- paste0(out.grid,".sgrd")
}

RSAGA::rsaga.get.usage(
    lib = "imagery_classification",
    module = 1
)

### Perform K-Means Clustering ###

CLUSTER <- paste0(root,"/workingFiles/kernen/browns2/raster/clusters/clusters.sgrd")

grid1 <- sagaGrds[[1]][1]
grid2 <- sagaGrds[[2]][1]

RSAGA::rsaga.geoprocessor(
    lib = "imagery_classification",
    module = 1,
    param = list(
        GRIDS=paste0(grid1,";",grid2),
        CLUSTER=CLUSTER,
        NCLUSTER=2
    ),
    display.command = TRUE
)

