use chain_drugstore;

create table chain_pharmacy
( store_id int primary key,
  pharmacy_name varchar(100),
  phone bigint,
  address varchar(200),
  M_id int ,
  Areas varchar(50));
  
insert into chain_pharmacy values (101, "CVS pharmacy",02224092234,"741 W 31ST",1001,"741 W 31ST");
insert into chain_pharmacy values (102, "WALGREENS #09038",02224092534,"4001 W IRVING PARK RD",2002,"4001 W IRVING PARK RD");
insert into chain_pharmacy values (103, "GSK PHARMACY INC",02224092584,"5140 W CHICAGO AVE",3002,"5140 W CHICAGO AVE");
insert into chain_pharmacy values (104, "SAVE RITE PHARMACY DISCOUNT CENTER",02224095584,"3479 N BROADWAY ST",4002,"53479 N BROADWAY ST");
insert into chain_pharmacy values (105, "PROFESSIONAL OFFICE BUILDING PHARMACY",02224095584,"1725 W HARRISON STE 418",5002,"1725 W HARRISON STE 418");
insert into chain_pharmacy values (106, "111th Pharma Family",02224095544,"11101 S STATE ST",5002,"11101 S STATE ST");
insert into chain_pharmacy values (107, "MARIAM PHARMACY",02224095524,"3514 W Lawrence Ave",7002,"3514 W Lawrence Ave");
insert into chain_pharmacy values (108, "OSCO DRUG",02224096524,"1763 W Howard St",8002,"1763 W Howard St");
insert into chain_pharmacy values (109, "Dr. Z's Pharmacy",02224086524,"4326 N Lincoln Ave",9002,"4326 N Lincoln Ave");
insert into chain_pharmacy values (110, "DAMBER PHARMACY",02224046524,"213 W INSTITUTE PLACE STE 703",1002,"213 W INSTITUTE PLACE STE 703");

select * from chain_pharmacy;

update chain_pharmacy set M_id=1102 where store_id=110; 


drop table chain_pharmacy;
truncate table chain_pharmacy;