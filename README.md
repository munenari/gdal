# gdal docker image

## example

- convert shp to geojson

```bash
$ ls
test.dbf test.prj test.sbn test.sbx test.shp test.shp.xml
$ docker run -it -v `pwd`:/data munenari/gdal ogr2ogr -f GeoJSON -nlt GEOMETRY -t_srs EPSG:4326 test.geojson test.shp
```

- convert all shp

```bash
$ ls
test.dbf test.prj test.sbn test.sbx test.shp test.shp.xml
test2.dbf test2.prj test2.sbn test2.sbx test2.shp test2.shp.xml
$ docker run -it -v `pwd`:/data munenari/gdal sh -c 'for f in *.shp; echo $f; ogr2ogr -f GeoJSON -nlt GEOMETRY -t_srs EPSG:4326 $f.geojson $f; done'
```
