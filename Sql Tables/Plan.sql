create table Plan
(
	plan_id int primary key,
    plan_time Datetime,
    quantity int,
    price decimal,
    T_price decimal,
    drugs_id2 int,
    store_id2 int,
    Foreign key (drugs_id2) references Drugs(drug_id),
    Foreign key (store_id2) references chain_pharmacy(store_id));
    

insert into Plan values(301,current_time(), 200,120,24000,201,101);   
insert into Plan values(302,current_time(), 100,89,8900,202,101);   
insert into Plan values(303,current_time(), 300,24,7200,203,102);   
insert into Plan values(304,current_time(), 1000,3,3000,204,103);   
insert into Plan values(305,current_time(), 400,77,30800,205,105);   
insert into Plan values(306,current_time(), 200,142,28400,206,104);   
insert into Plan values(307,current_time(), 150,120,18000,207,106);
insert into Plan values(308,current_time(), 200,116,23200,208,107);   
insert into Plan values(309,current_time(), 100,133,13300,209,108);
insert into Plan values(310,current_time(), 1000,24,24000,210,110);

select * from Plan;
drop table Plan;