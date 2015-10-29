# Witan and Projections

### What is this?

I've been meaning to play with [Spruceleaf ](https://github.com/MastodonC/spruce-leaf) for a while, and one gig I'm working on seemed to a decent one to try it out on.

## TODO

- build the shapes (work out how to get geojson of London wards)
  - find shapefiles
  - find notes and refresh memory of half-remembered ogr2ogr and gdal commands
  - do the same for topojson and geojson
  - make a Makefile this time
  - use commands to make this stuff and PUT IT IN THE MAKEFILE
- find sample CSV file with data in correct shape
  - tidy up CSV if necessary
- dick about in atom and a browser

### Build the shapes

I got my hands on the layers from ONS.

I open ed it up in QGIS. It's not the prettiest app, but it was able to help me understand what I'm looking at.

```
ogrinfo -al -so ./data/GB/district_borough_unitary_ward_region.shp
```

```
INFO: Open of `./data/GB/district_borough_unitary_ward_region.shp'
      using driver `ESRI Shapefile' successful.

Layer name: district_borough_unitary_ward_region
Geometry: Polygon
Feature Count: 7430
Extent: (5513.000000, 34914.400000) - (655989.000000, 1220301.500000)
Layer SRS WKT:
PROJCS["British_National_Grid",
    GEOGCS["GCS_OSGB_1936",
        DATUM["OSGB_1936",
            SPHEROID["Airy_1830",6377563.396,299.3249646]],
        PRIMEM["Greenwich",0],
        UNIT["Degree",0.0174532925199433]],
    PROJECTION["Transverse_Mercator"],
    PARAMETER["False_Easting",400000],
    PARAMETER["False_Northing",-100000],
    PARAMETER["Central_Meridian",-2],
    PARAMETER["Scale_Factor",0.999601272],
    PARAMETER["Latitude_Of_Origin",49],
    UNIT["Meter",1]]
NAME: String (70.0)
AREA_CODE: String (3.0)
DESCRIPTIO: String (50.0)
FILE_NAME: String (50.0)
NUMBER: Real (11.0)
NUMBER0: Real (11.0)
POLYGON_ID: Real (11.0)
UNIT_ID: Real (11.0)
CODE: String (9.0)
HECTARES: Real (12.3)
AREA: Real (12.3)
TYPE_CODE: String (2.0)
DESCRIPT0: String (25.0)
TYPE_COD0: String (3.0)
DESCRIPT1: String (36.0)
```




```
ogr2ogr
```
