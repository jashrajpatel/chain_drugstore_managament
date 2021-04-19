create table employee
(
	E_id int primary key,
    E_Name varchar(50),
    E_number bigint);
    

insert into employee values (601,"Jashraj",12345);
insert into employee values (602,"Aniket",123456);
insert into employee values (603,"Harsh",1234567);
insert into employee values (604,"Soham",12345678);
insert into employee values (605,"Jashraj",123456789);

select * from employee;
drop table emloyee;