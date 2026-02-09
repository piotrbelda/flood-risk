#!/bin/bash

ogr2ogr \
-f "PostgreSQL" \
PG:"service=db" \
WFS:"https://wody.isok.gov.pl/wss/INSPIRE/INSPIRE_NZ_HY_MZPMRP_WFS" \
"nz-core:RiskZone" \
-nln inspire.risk_zone \
-overwrite \
-t_srs EPSG:2180 \
-lco GEOMETRY_NAME=geom \
-oo FILTER="<Filter xmlns='http://www.opengis.net/ogc'><BBOX><PropertyName>geometry</PropertyName><Envelope srsName='EPSG:2180'><lowerCorner>573050 5709050</lowerCorner><upperCorner>578050 5714050</upperCorner></Envelope></BBOX></Filter>" \
-skipfailures
