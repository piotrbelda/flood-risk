#!/bin/bash

FILE_PATH="OZP_02/obszar_zagrozenia_pow_rzeki_02.shp"

ogr2ogr \
-f "PostgreSQL" \
PG:"service=db" \
"${FILE_PATH}" \
-nln gov.river_risk_zone_02 \
-overwrite \
-lco GEOMETRY_NAME=geom \
-nlt MULTIPOLYGON \
-lco PRECISION=NO
