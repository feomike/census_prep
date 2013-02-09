
drop table census2010.water;
create table census2010.water
(
  geoid10 character varying(15),
  water smallint,
  nearshore smallint
)
WITH (
  OIDS=TRUE
);
ALTER TABLE census2010.water OWNER TO feomike;
COMMENT ON TABLE census2010.water IS 'added water attributes table on 2/9/2013 from source';

copy census2010.water
  from '/users/feomike/downloads/water.csv'
  header csv delimiter '|';
