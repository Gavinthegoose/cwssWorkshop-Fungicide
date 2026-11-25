# CWSS 2026 Workshop Saskatoon - Fungicide

## Metadata

**Author:** Walker Maess; Kwabena Nketia  
**Email:** walker.maess@usask.ca  
**Date:** Wed Nov 25 20:29:38 UTC 2026  

## Project Background

This workshop works through how to create an On/Off Variable Rate application map for fungicide products. In this workshop we take on the role of an agronomist, where your client has requested a VRA map to apply fungicide to their Canola crop. In this example we use Sentinel 2 imagery from [Copernicus Browser](https://identity.dataspace.copernicus.eu/auth/realms/CDSE/protocol/openid-connect/auth?client_id=sh-5f8b630b-b083-49ed-b340-b8f01ecb81c4&redirect_uri=https%3A%2F%2Fbrowser.dataspace.copernicus.eu%2F%3Fzoom%3D12%26lat%3D52.14592%26lng%3D-106.50387%26themeId%3DDEFAULT-THEME%26datasetId%3DS2_L2A_CDAS%26fromTime%3D2026-11-25T00%253A00%253A00.000Z%26toTime%3D2026-11-25T23%253A59%253A59.999Z%26layerId%3D1_TRUE_COLOR%26demSource3D%3D%2522MAPZEN%2522%26cloudCoverage%3D30%26dateMode%3DSINGLE%26panel%3Dlayers&state=d7ef4658-93f6-40eb-8dfa-cb58ef08f6d4&response_mode=fragment&response_type=code&scope=openid&nonce=84fb5a8f-b5be-4374-9e1b-8c9595cbd933&code_challenge=44KhFtZzfSzFVwYcDVVD2ghS0Kw6e0rLjXyTHOZ1Vks&code_challenge_method=S256) to create VRA maps with NDVI.

## Directories

```bash
.
├── README
├── documentation
├── projects
├── rawData
├── scripts
└── workingFiles

6 directories

```

### /documentation

Instructions for completing this workshop

### /projects

A good place to store QGIS project files. Highly recommended that you use this as a location for the `.qgz` file created during the completion of this workshop.  

### /rawData

Raw imagery from Copernicus Browser and field boundaries of the cropland used.  

### /scripts

Additional R scripts you can implement into your workflows, essentially does this workshop in 1 convenient script.

### /workingFiles

The saving directory for files created during the manipulation of the raw files. The clipped NDVI imagery is located within this folder.
