# 서울의 밀도와 연식

[demo] (http://www-personal.umich.edu/~yonghah/seoul-buildings/)

* 데이터는 국가공간정보포털에서 구합니다.
http://openapi.nsdi.go.kr/nsdi/eios/ServiceDetail.do?svcSe=F&svcId=F010

## 필요한 것

### ogr2ogr
```
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
sudo apt-get install gdal-bin
```
- 다운로드 받은 shapefile을 geojson으로 변환합니다. 그와중에 projection도 wgs84로 바꿔줍니다.

### tippecanoe
https://github.com/mapbox/tippecanoe
- geojson으로부터 벡터 타일을 만듭니다. parameter 설정이 미묘합니다.

### mapbox cli
https://github.com/mapbox/mapbox-cli-py
- 생성된 벡터타일을 mapbox에 업로드합니다.

### web 
www/index.html을 보세요.
