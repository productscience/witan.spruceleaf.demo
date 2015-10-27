
london.and.other.wards.shp:
		unzip data/bdline_essh_gb.zip
		cp ./data/GB/district_borough_unitary_ward_region.shp london.and.other.wards.shp

londonWards.json: london.and.other.wards.shp
		ogr2ogr -where 'FILE_NAME IN ("GREATER_LONDON_AUTHORITY")' -f "GeoJSON" londonWards.json ./data/GB/district_borough_unitary_ward_region.shp

londonWards.topo.json: londonWards.json
		topojson -o londonWards.topo.json --id-property CODE --properties name=NAME londonWards.json
		cp londonWards.topo.json ./html/gla.wards.json
