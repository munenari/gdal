# gdal docker image

## example

- convert shp to geojson

```bash
$ ls
test.dbf test.prj test.sbn test.sbx test.shp test.shp.xml
$ docker run -it -v `pwd`:/data munenari/gdal ogr2ogr -f GeoJSON -nlt GEOMETRY -t_srs EPSG:4326 test.geojson test.shp
```
