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

--alter table census2010.block_01 
--  add column water smallint, add column nearshore smallint;
alter table census2010.block_02 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_04 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_05 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_06 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_08 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_09 
  add column water smallint, add column nearshore smallint;
  
alter table census2010.block_10 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_11 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_12 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_13 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_15 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_16 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_17 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_18 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_19 
  add column water smallint, add column nearshore smallint;

alter table census2010.block_20 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_21 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_22 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_23 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_24 
  add column water smallint, add column nearshore smallint; 
alter table census2010.block_25 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_26 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_27 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_28 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_29 
  add column water smallint, add column nearshore smallint;

alter table census2010.block_30 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_31 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_32 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_33 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_34 
  add column water smallint, add column nearshore smallint; 
alter table census2010.block_35 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_36 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_37 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_38 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_39 
  add column water smallint, add column nearshore smallint;

alter table census2010.block_40 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_41 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_42 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_44 
  add column water smallint, add column nearshore smallint; 
alter table census2010.block_45 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_46 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_47 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_48 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_49 
  add column water smallint, add column nearshore smallint;

alter table census2010.block_50 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_51 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_53 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_54 
  add column water smallint, add column nearshore smallint; 
alter table census2010.block_55 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_56 
  add column water smallint, add column nearshore smallint;
  
alter table census2010.block_60 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_66 
  add column water smallint, add column nearshore smallint;    
alter table census2010.block_69 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_72 
  add column water smallint, add column nearshore smallint;
alter table census2010.block_78
  add column water smallint, add column nearshore smallint;    
