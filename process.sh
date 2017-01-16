#!/bin/bash   
export SHAPE_ENCODING="EUC-KR"
export MAPBOX_ACCESS_TOKEN=your_key_here
DOWNLOAD_FILE=/home/yonghah/data/seoul/AL_11_D010_20170107.shp
GEOJSON=data/seoul-building.geojson
MBTILE=data/seoul-building.mbtiles
ogr2ogr -f GeoJSON -overwrite -s_srs "+proj=tmerc +lat_0=38 +lon_0=127.0028902777778 +k=1 +x_0=200000 +y_0=500000 +ellps=bessel +units=m +no_defs +towgs84=-115.80,474.99,674.11,1.16,-2.31,-1.63,6.43" -t_srs epsg:4326 $GEOJSON $DOWNLOAD_FILE 
tippecanoe -o $MBTILE -z20 -Z14 -f -S10 -pd $GEOJSON
source activate geo
mapbox upload $MBTILE ahgnoy.seoul-building-portal
