create table stock
(
	stock_id int primary key,
    stock_date datetime, 
	last_remain int,
    were int, 
    sale_num int,
    remaains int,
    isable char(10),
    drugs_id4 int,
    Foreign key (drugs_id4) references Drugs(drug_id));
    
    
insert into stock values (701, current_date(), 10000, 100000, 4000, 200, 20000, 201);
insert into stock values (702, current_date(), 20000, 10000, 3000, 300, 40000, 202);
insert into stock values (703, current_date(), 10000, 100000, 4000, 200, 20000, 202);
insert into stock values (704, current_date(), 10000, 100000, 4000, 200, 20000, 203);
insert into stock values (705, current_date(), 10000, 100000, 4000, 200, 20000, 204);
insert into stock values (706, current_date(), 10000, 100000, 4000, 200, 20000, 205);
insert into stock values (707, current_date(), 10000, 100000, 4000, 200, 20000, 206);
insert into stock values (708, current_date(), 10000, 100000, 4000, 200, 20000, 207);
insert into stock values (709, current_date(), 10000, 100000, 4000, 200, 20000, 208);
insert into stock values (710, current_date(), 10000, 100000, 4000, 200, 20000, 209);

select * from stock;