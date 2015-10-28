html/gla.wards.json: londonWards.topo.json
	cp "$<" "$@"

data/bdline_essh_gb.zip:
	curl -o "$@" http://parlvid.mysociety.org/os/bdline_gb-2015-05.zip

data/GB/district_borough_unitary_ward_region.shp: data/bdline_essh_gb.zip
	unzip "$<" && touch "$@"

londonWards.json: data/GB/district_borough_unitary_ward_region.shp
	rm -f "$@" && ogr2ogr -where 'FILE_NAME IN ("GREATER_LONDON_AUTHORITY")' -f "GeoJSON" -t_srs EPSG:4326 "$@" "$<"

londonWards.topo.json: londonWards.json
	topojson -o "$@" --id-property CODE --properties name=NAME "$<"
