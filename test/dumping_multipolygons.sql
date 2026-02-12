insert into gov.river_risk_zone_02_test (
	geom,
	hyd_id,
	mphp_name,
	prng_id,
	prng_name,
	basin_name,
	basin_code,
	water_region_name,
	catchment_name,
	ob_n_code,
	scen_id,
	description,
	version
)
select
	st_setsrid(st_transform((st_dump(geom)).geom::geometry(polygon), 2180), 0) as geom,
	id_hyd_r::BIGINT as hyd_id,
	nazwa_mphp as mphp_name,
	id_prng as prng_id,
	nazwa_prng as prng_name,
	naz_dorz as basin_name,
	kod_dorz as basin_code,
	naz_rw as water_region_name,
	naz_zlewni as catchment_name,
	kod_ob_n as ob_n_code,
	id_scen as scen_id,
	opis as description,
	wersja as version
from gov.river_risk_zone_02;

CREATE TABLE gov.river_risk_zone_02_test (
	id BIGSERIAL NOT NULL,
	geom public.geometry(POLYGON),
	hyd_id BIGINT,
	mphp_name TEXT,
	prng_id TEXT,
	prng_name TEXT,
	basin_name TEXT,
	basin_code TEXT,
	water_region_name TEXT,
	catchment_name TEXT,
	ob_n_code TEXT,
	scen_id TEXT,
	description TEXT,
	version TEXT,
	CONSTRAINT river_risk_zone_02_test_pkey PRIMARY KEY (id)
);

select
	count(*)
from gov.river_risk_zone_02_test
