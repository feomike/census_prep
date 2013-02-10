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

update census2010.block_01
  set water = water.water
  from census2010.water
  where block_01.geoid10=water.geoid10 
  and water.geoid10 like '01%';
update census2010.block_01
  set nearshore = water.nearshore
  from census2010.water
  where block_01.geoid10=water.geoid10 
  and water.geoid10 like '01%';

update census2010.block_02
  set water = water.water
  from census2010.water
  where block_02.geoid10=water.geoid10 
  and water.geoid10 like '02%';
update census2010.block_02
  set nearshore = water.nearshore
  from census2010.water
  where block_02.geoid10=water.geoid10 
  and water.geoid10 like '02%';

update census2010.block_04
  set water = water.water
  from census2010.water
  where block_04.geoid10=water.geoid10 
  and water.geoid10 like '04%';
update census2010.block_04
  set nearshore = water.nearshore
  from census2010.water
  where block_04.geoid10=water.geoid10 
  and water.geoid10 like '04%';

update census2010.block_05
  set water = water.water
  from census2010.water
  where block_05.geoid10=water.geoid10 
  and water.geoid10 like '05%';
update census2010.block_05
  set nearshore = water.nearshore
  from census2010.water
  where block_05.geoid10=water.geoid10 
  and water.geoid10 like '05%';

update census2010.block_06
  set water = water.water
  from census2010.water
  where block_06.geoid10=water.geoid10 
  and water.geoid10 like '06%';
update census2010.block_06
  set nearshore = water.nearshore
  from census2010.water
  where block_06.geoid10=water.geoid10 
  and water.geoid10 like '06%';

update census2010.block_08
  set water = water.water
  from census2010.water
  where block_08.geoid10=water.geoid10 
  and water.geoid10 like '08%';
update census2010.block_08
  set nearshore = water.nearshore
  from census2010.water
  where block_08.geoid10=water.geoid10 
  and water.geoid10 like '08%';

update census2010.block_09
  set water = water.water
  from census2010.water
  where block_09.geoid10=water.geoid10 
  and water.geoid10 like '09%';
update census2010.block_09
  set nearshore = water.nearshore
  from census2010.water
  where block_09.geoid10=water.geoid10 
  and water.geoid10 like '09%';

update census2010.block_10
  set water = water.water
  from census2010.water
  where block_10.geoid10=water.geoid10 
  and water.geoid10 like '10%';
update census2010.block_10
  set nearshore = water.nearshore
  from census2010.water
  where block_10.geoid10=water.geoid10 
  and water.geoid10 like '10%';

update census2010.block_11
  set water = water.water
  from census2010.water
  where block_11.geoid10=water.geoid10 
  and water.geoid10 like '11%';
update census2010.block_11
  set nearshore = water.nearshore
  from census2010.water
  where block_11.geoid10=water.geoid10 
  and water.geoid10 like '11%';

update census2010.block_12
  set water = water.water
  from census2010.water
  where block_12.geoid10=water.geoid10 
  and water.geoid10 like '12%';
update census2010.block_12
  set nearshore = water.nearshore
  from census2010.water
  where block_12.geoid10=water.geoid10 
  and water.geoid10 like '12%';

update census2010.block_13
  set water = water.water
  from census2010.water
  where block_13.geoid10=water.geoid10 
  and water.geoid10 like '13%';
update census2010.block_13
  set nearshore = water.nearshore
  from census2010.water
  where block_13.geoid10=water.geoid10 
  and water.geoid10 like '13%';

update census2010.block_15
  set water = water.water
  from census2010.water
  where block_15.geoid10=water.geoid10 
  and water.geoid10 like '15%';
update census2010.block_15
  set nearshore = water.nearshore
  from census2010.water
  where block_15.geoid10=water.geoid10 
  and water.geoid10 like '15%';

update census2010.block_16
  set water = water.water
  from census2010.water
  where block_16.geoid10=water.geoid10 
  and water.geoid10 like '16%';
update census2010.block_16
  set nearshore = water.nearshore
  from census2010.water
  where block_16.geoid10=water.geoid10 
  and water.geoid10 like '16%';

update census2010.block_17
  set water = water.water
  from census2010.water
  where block_17.geoid10=water.geoid10 
  and water.geoid10 like '17%';
update census2010.block_17
  set nearshore = water.nearshore
  from census2010.water
  where block_17.geoid10=water.geoid10 
  and water.geoid10 like '17%';

update census2010.block_18
  set water = water.water
  from census2010.water
  where block_18.geoid10=water.geoid10 
  and water.geoid10 like '18%';
update census2010.block_18
  set nearshore = water.nearshore
  from census2010.water
  where block_18.geoid10=water.geoid10 
  and water.geoid10 like '18%';

update census2010.block_19
  set water = water.water
  from census2010.water
  where block_19.geoid10=water.geoid10 
  and water.geoid10 like '19%';
update census2010.block_19
  set nearshore = water.nearshore
  from census2010.water
  where block_19.geoid10=water.geoid10 
  and water.geoid10 like '19%';

update census2010.block_20
  set water = water.water
  from census2010.water
  where block_20.geoid10=water.geoid10 
  and water.geoid10 like '20%';
update census2010.block_20
  set nearshore = water.nearshore
  from census2010.water
  where block_20.geoid10=water.geoid10 
  and water.geoid10 like '20%';

update census2010.block_21
  set water = water.water
  from census2010.water
  where block_21.geoid10=water.geoid10 
  and water.geoid10 like '21%';
update census2010.block_21
  set nearshore = water.nearshore
  from census2010.water
  where block_21.geoid10=water.geoid10 
  and water.geoid10 like '21%';

update census2010.block_22
  set water = water.water
  from census2010.water
  where block_22.geoid10=water.geoid10 
  and water.geoid10 like '22%';
update census2010.block_22
  set nearshore = water.nearshore
  from census2010.water
  where block_22.geoid10=water.geoid10 
  and water.geoid10 like '22%';

update census2010.block_23
  set water = water.water
  from census2010.water
  where block_23.geoid10=water.geoid10 
  and water.geoid10 like '23%';
update census2010.block_23
  set nearshore = water.nearshore
  from census2010.water
  where block_23.geoid10=water.geoid10 
  and water.geoid10 like '23%';

update census2010.block_24
  set water = water.water
  from census2010.water
  where block_24.geoid10=water.geoid10 
  and water.geoid10 like '24%';
update census2010.block_24
  set nearshore = water.nearshore
  from census2010.water
  where block_24.geoid10=water.geoid10 
  and water.geoid10 like '24%';

update census2010.block_25
  set water = water.water
  from census2010.water
  where block_25.geoid10=water.geoid10 
  and water.geoid10 like '25%';
update census2010.block_25
  set nearshore = water.nearshore
  from census2010.water
  where block_25.geoid10=water.geoid10 
  and water.geoid10 like '25%';

update census2010.block_26
  set water = water.water
  from census2010.water
  where block_26.geoid10=water.geoid10 
  and water.geoid10 like '26%';
update census2010.block_26
  set nearshore = water.nearshore
  from census2010.water
  where block_26.geoid10=water.geoid10 
  and water.geoid10 like '26%';

update census2010.block_27
  set water = water.water
  from census2010.water
  where block_27.geoid10=water.geoid10 
  and water.geoid10 like '27%';
update census2010.block_27
  set nearshore = water.nearshore
  from census2010.water
  where block_27.geoid10=water.geoid10 
  and water.geoid10 like '27%';

update census2010.block_28
  set water = water.water
  from census2010.water
  where block_28.geoid10=water.geoid10 
  and water.geoid10 like '28%';
update census2010.block_28
  set nearshore = water.nearshore
  from census2010.water
  where block_28.geoid10=water.geoid10 
  and water.geoid10 like '28%';

update census2010.block_29
  set water = water.water
  from census2010.water
  where block_29.geoid10=water.geoid10 
  and water.geoid10 like '29%';
update census2010.block_29
  set nearshore = water.nearshore
  from census2010.water
  where block_29.geoid10=water.geoid10 
  and water.geoid10 like '29%';

update census2010.block_30
  set water = water.water
  from census2010.water
  where block_30.geoid10=water.geoid10 
  and water.geoid10 like '30%';
update census2010.block_30
  set nearshore = water.nearshore
  from census2010.water
  where block_30.geoid10=water.geoid10 
  and water.geoid10 like '30%';

update census2010.block_31
  set water = water.water
  from census2010.water
  where block_31.geoid10=water.geoid10 
  and water.geoid10 like '31%';
update census2010.block_31
  set nearshore = water.nearshore
  from census2010.water
  where block_31.geoid10=water.geoid10 
  and water.geoid10 like '31%';

update census2010.block_32
  set water = water.water
  from census2010.water
  where block_32.geoid10=water.geoid10 
  and water.geoid10 like '32%';
update census2010.block_32
  set nearshore = water.nearshore
  from census2010.water
  where block_32.geoid10=water.geoid10 
  and water.geoid10 like '32%';

update census2010.block_33
  set water = water.water
  from census2010.water
  where block_33.geoid10=water.geoid10 
  and water.geoid10 like '33%';
update census2010.block_33
  set nearshore = water.nearshore
  from census2010.water
  where block_33.geoid10=water.geoid10 
  and water.geoid10 like '33%';

update census2010.block_34
  set water = water.water
  from census2010.water
  where block_34.geoid10=water.geoid10 
  and water.geoid10 like '34%';
update census2010.block_34
  set nearshore = water.nearshore
  from census2010.water
  where block_34.geoid10=water.geoid10 
  and water.geoid10 like '34%';

update census2010.block_35
  set water = water.water
  from census2010.water
  where block_35.geoid10=water.geoid10 
  and water.geoid10 like '35%';
update census2010.block_35
  set nearshore = water.nearshore
  from census2010.water
  where block_35.geoid10=water.geoid10 
  and water.geoid10 like '35%';

update census2010.block_36
  set water = water.water
  from census2010.water
  where block_36.geoid10=water.geoid10 
  and water.geoid10 like '36%';
update census2010.block_36
  set nearshore = water.nearshore
  from census2010.water
  where block_36.geoid10=water.geoid10 
  and water.geoid10 like '36%';

update census2010.block_37
  set water = water.water
  from census2010.water
  where block_37.geoid10=water.geoid10 
  and water.geoid10 like '37%';
update census2010.block_37
  set nearshore = water.nearshore
  from census2010.water
  where block_37.geoid10=water.geoid10 
  and water.geoid10 like '37%';

update census2010.block_38
  set water = water.water
  from census2010.water
  where block_38.geoid10=water.geoid10 
  and water.geoid10 like '38%';
update census2010.block_38
  set nearshore = water.nearshore
  from census2010.water
  where block_38.geoid10=water.geoid10 
  and water.geoid10 like '38%';

update census2010.block_39
  set water = water.water
  from census2010.water
  where block_39.geoid10=water.geoid10 
  and water.geoid10 like '39%';
update census2010.block_39
  set nearshore = water.nearshore
  from census2010.water
  where block_39.geoid10=water.geoid10 
  and water.geoid10 like '39%';

update census2010.block_40
  set water = water.water
  from census2010.water
  where block_40.geoid10=water.geoid10 
  and water.geoid10 like '40%';
update census2010.block_40
  set nearshore = water.nearshore
  from census2010.water
  where block_40.geoid10=water.geoid10 
  and water.geoid10 like '40%';

update census2010.block_41
  set water = water.water
  from census2010.water
  where block_41.geoid10=water.geoid10 
  and water.geoid10 like '41%';
update census2010.block_41
  set nearshore = water.nearshore
  from census2010.water
  where block_41.geoid10=water.geoid10 
  and water.geoid10 like '41%';

update census2010.block_42
  set water = water.water
  from census2010.water
  where block_42.geoid10=water.geoid10 
  and water.geoid10 like '42%';
update census2010.block_42
  set nearshore = water.nearshore
  from census2010.water
  where block_42.geoid10=water.geoid10 
  and water.geoid10 like '42%';

update census2010.block_44
  set water = water.water
  from census2010.water
  where block_44.geoid10=water.geoid10 
  and water.geoid10 like '44%';
update census2010.block_44
  set nearshore = water.nearshore
  from census2010.water
  where block_44.geoid10=water.geoid10 
  and water.geoid10 like '44%';

update census2010.block_45
  set water = water.water
  from census2010.water
  where block_45.geoid10=water.geoid10 
  and water.geoid10 like '45%';
update census2010.block_45
  set nearshore = water.nearshore
  from census2010.water
  where block_45.geoid10=water.geoid10 
  and water.geoid10 like '45%';

update census2010.block_46
  set water = water.water
  from census2010.water
  where block_46.geoid10=water.geoid10 
  and water.geoid10 like '46%';
update census2010.block_46
  set nearshore = water.nearshore
  from census2010.water
  where block_46.geoid10=water.geoid10 
  and water.geoid10 like '46%';

update census2010.block_47
  set water = water.water
  from census2010.water
  where block_47.geoid10=water.geoid10 
  and water.geoid10 like '47%';
update census2010.block_47
  set nearshore = water.nearshore
  from census2010.water
  where block_47.geoid10=water.geoid10 
  and water.geoid10 like '47%';

update census2010.block_48
  set water = water.water
  from census2010.water
  where block_48.geoid10=water.geoid10 
  and water.geoid10 like '48%';
update census2010.block_48
  set nearshore = water.nearshore
  from census2010.water
  where block_48.geoid10=water.geoid10 
  and water.geoid10 like '48%';

update census2010.block_49
  set water = water.water
  from census2010.water
  where block_49.geoid10=water.geoid10 
  and water.geoid10 like '49%';
update census2010.block_49
  set nearshore = water.nearshore
  from census2010.water
  where block_49.geoid10=water.geoid10 
  and water.geoid10 like '49%';

update census2010.block_50
  set water = water.water
  from census2010.water
  where block_50.geoid10=water.geoid10 
  and water.geoid10 like '50%';
update census2010.block_50
  set nearshore = water.nearshore
  from census2010.water
  where block_50.geoid10=water.geoid10 
  and water.geoid10 like '50%';

update census2010.block_51
  set water = water.water
  from census2010.water
  where block_51.geoid10=water.geoid10 
  and water.geoid10 like '51%';
update census2010.block_51
  set nearshore = water.nearshore
  from census2010.water
  where block_51.geoid10=water.geoid10 
  and water.geoid10 like '51%';

update census2010.block_53
  set water = water.water
  from census2010.water
  where block_53.geoid10=water.geoid10 
  and water.geoid10 like '53%';
update census2010.block_53
  set nearshore = water.nearshore
  from census2010.water
  where block_53.geoid10=water.geoid10 
  and water.geoid10 like '53%';

update census2010.block_54
  set water = water.water
  from census2010.water
  where block_54.geoid10=water.geoid10 
  and water.geoid10 like '54%';
update census2010.block_54
  set nearshore = water.nearshore
  from census2010.water
  where block_54.geoid10=water.geoid10 
  and water.geoid10 like '54%';

update census2010.block_55
  set water = water.water
  from census2010.water
  where block_55.geoid10=water.geoid10 
  and water.geoid10 like '55%';
update census2010.block_55
  set nearshore = water.nearshore
  from census2010.water
  where block_55.geoid10=water.geoid10 
  and water.geoid10 like '55%';

update census2010.block_56
  set water = water.water
  from census2010.water
  where block_56.geoid10=water.geoid10 
  and water.geoid10 like '56%';
update census2010.block_56
  set nearshore = water.nearshore
  from census2010.water
  where block_56.geoid10=water.geoid10 
  and water.geoid10 like '56%';

update census2010.block_60
  set water = water.water
  from census2010.water
  where block_60.geoid10=water.geoid10 
  and water.geoid10 like '60%';
update census2010.block_60
  set nearshore = water.nearshore
  from census2010.water
  where block_60.geoid10=water.geoid10 
  and water.geoid10 like '60%';

update census2010.block_66
  set water = water.water
  from census2010.water
  where block_66.geoid10=water.geoid10 
  and water.geoid10 like '66%';
update census2010.block_66
  set nearshore = water.nearshore
  from census2010.water
  where block_66.geoid10=water.geoid10 
  and water.geoid10 like '66%';

update census2010.block_69
  set water = water.water
  from census2010.water
  where block_69.geoid10=water.geoid10 
  and water.geoid10 like '69%';
update census2010.block_69
  set nearshore = water.nearshore
  from census2010.water
  where block_69.geoid10=water.geoid10 
  and water.geoid10 like '69%';

update census2010.block_72
  set water = water.water
  from census2010.water
  where block_72.geoid10=water.geoid10 
  and water.geoid10 like '72%';
update census2010.block_72
  set nearshore = water.nearshore
  from census2010.water
  where block_72.geoid10=water.geoid10 
  and water.geoid10 like '72%';

update census2010.block_78
  set water = water.water
  from census2010.water
  where block_78.geoid10=water.geoid10 
  and water.geoid10 like '78%';
update census2010.block_78
  set nearshore = water.nearshore
  from census2010.water
  where block_78.geoid10=water.geoid10 
  and water.geoid10 like '78%';
