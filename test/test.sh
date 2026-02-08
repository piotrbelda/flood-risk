#!/bin/bash

ogr2ogr \
-f "PostgreSQL" \
PG:"service=db" \
WFS:"https://wody.isok.gov.pl/wss/INSPIRE/INSPIRE_HY_10k_2019_WFS" \
hy-p:Watercourse \
-nln public.watercourse
-overwrite \
-t_srs EPSG:2180 \
-spat 573050 5709050 578050 5714050 \
-lco GEOMETRY_NAME=geom \
-lco FID=id
