# Seoul's all buildings in 3d 

[demo](http://www-personal.umich.edu/~yonghah/seoul-buildings/)
* Data from http://openapi.nsdi.go.kr/nsdi/eios/ServiceDetail.do?svcSe=F&svcId=F010
* Around 100k buildings.

## Steps
* shapefile from Korean Gov. converted to geojson using [ogr2ogr](http://www.gdal.org/ogr2ogr.html)
* [Tippecanoe](https://github.com/mapbox/tippecanoe) creates vector tile
* Upload vector tile to mapbox using [mapbox-cli](https://github.com/mapbox/mapbox-cli-py)
* 3D Visualized with [Mapbox-gl.js](https://www.mapbox.com/mapbox-gl-js/api/)

![image](https://user-images.githubusercontent.com/3218468/30178528-40f2a8ac-93d7-11e7-80c5-68567e40ca0e.png)
