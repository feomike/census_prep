#block_load.sh
#load the block data into a postgress database
db=feomike 
schema=census2010
echo "Today is $(date)"

rm *.dbf
rm *.prj
rm *.shx
rm *.shp
rm *.xml


for i in *.zip
do
x="'created_on_02/08/2013_with_import_shell_script_and_properly_projected_from_wgs84_to_900913_from_source_census_ftp_site_at_ftp_ftp://ftp2.census.gov/geo/tiger/TIGER2010'"
y=${i:8:2}  #get the state fips id
z=${i:0:21}

echo i is $i
echo x is $x
echo y is $y
echo z is $z

unzip $i -d ./
psql -p 54321 -h localhost $db -c 'DROP TABLE if exists analysis.working'
shp2pgsql -s 4269 -I -W latin1 -g geom $z.shp analysis.working $db | psql -p 54321 -h localhost $db
psql -p 54321 -h localhost $db -c 'ALTER TABLE analysis.working OWNER TO postgres'
psql -p 54321 -h localhost $db -c 'DROP TABLE '$schema'.block_'$y
psql -p 54321 -h localhost $db -c 'create table '$schema'.block_'$y' as select gid, statefp10, countyfp10, tractce10, blockce10, geoid10, name10, mtfcc10, ur10, uace10, uatyp10, funcstat10, aland10, awater10, intptlat10, intptlon10, st_transform(geom,900913) as geom from analysis.working'
psql -p 54321 -h localhost $db -c 'alter table census2010.block_'$y' add CONSTRAINT census2010_block_'$y'_pkey PRIMARY KEY (gid)'
psql -p 54321 -h localhost $db -c 'alter table census2010.block_'$y' add CONSTRAINT enforce_dims_geom CHECK (st_ndims(geom) = 2) '
psql -p 54321 -h localhost $db -c 'alter table census2010.block_'$y' add CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 900913)'
psql -p 54321 -h localhost $db -c 'alter table census2010.block_'$y' set with oids'
psql -p 54321 -h localhost $db -c 'CREATE INDEX census2010_block_'$y'_geom_gist on census2010.block_'$y' using gist (geom)'
psql -p 54321 -h localhost $db -c 'CREATE INDEX census2010_block_'$y'_geoid10_gist on census2010.block_'$y' using btree (geoid10)'
psql -p 54321 -h localhost $db -c 'CREATE INDEX census2010_block_'$y'_gid_gist on census2010.block_'$y' using btree (gid)'
psql -p 54321 -h localhost $db -c 'comment on table census2010.block_'$y' is '$x
done

rm *.dbf
rm *.prj
rm *.shx
rm *.shp
rm *.xml

echo "Today is $(date)"
