ogr2ogr \
  -f GeoJSON \
  -where "FORMAL_EN IN ('Metropolitan France')" \
  subunits.json \
  ne_10m_admin_0_map_subunits.shp


  ogr2ogr \
  -f GeoJSON \
  -where "ISO_A2 = 'FR'" \
  places.json \
  ne_10m_populated_places.shp

  ogr2ogr \
  -f GeoJSON \
   -where "geonunit = 'France'" \
  states.json \
  ne_10m_admin_1_states_provinces.shp

  topojson \
  -o fra.json \
  --id-property SU_A3 \
  --properties name=NAME \
  -- \
  subunits.json \
  states.json \
	places.json  


  ogr2ogr \
    -f GeoJSON \
    sucd subunits.json \
    ne_10m_admin_0_map_subunits.shp

