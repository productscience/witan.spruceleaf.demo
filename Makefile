
london.and.other.wards.shp:
		unzip data/bdline_essh_gb.zip
		cp ./data/GB/district_borough_unitary_ward_region.shp london.and.other.wards.shp

just.london.wards.geo.json: london.and.other.wards.shp
		ogr2ogr -where 'FILE_NAME IN ("GREATER_LONDON_AUTHORITY")' -f "GeoJSON" just.london.wards.geo.json ./data/GB/district_borough_unitary_ward_region.shp

just.london.wards.topo.json: just.london.wards.geo.json
		topojson -o just.london.wards.topo.json --id-property CODE --properties name=NAME just.london.wards.geo.json
