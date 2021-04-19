create table Sale
(
	sale_id int primary key,
    sale_date datetime,
    quantity int,
    price decimal, 	
    sale_money decimal,
	drugs_id3 int,
    store_id3 int,
    employee_id2 int,
    Foreign key (drugs_id3) references Drugs(drug_id),
    Foreign key (store_id3) references chain_pharmacy(store_id),
    Foreign key (employee_id2) references employee(E_id));
    

insert into Sale values(401,current_date(), 200,120,24000,201,101,601);   
insert into Sale values(402,current_date(), 100,89,8900,202,101,601);   
insert into Sale values(403,current_date(), 300,24,7200,203,102,603);   
insert into Sale values(404,current_date(), 1000,3,3000,204,103,602);   
insert into Sale values(405,current_date(), 400,77,30800,205,105,604);   
insert into Sale values(406,current_date(), 200,142,28400,206,104,605);   
insert into Sale values(407,current_date(), 150,120,18000,207,106,604);
insert into Sale values(408,current_date(), 200,116,23200,208,107,602);   
insert into Sale values(409,current_date(), 100,133,13300,209,108,603);
insert into Sale values(410,current_date(), 1000,24,24000,210,110,604);

select * from Sale;

drop table Sale;