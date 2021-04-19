create table Drugs
( drug_id int primary key,
  d_name varchar(100),
  price decimal,
  sale_price int,
  icon varchar(20),
  company varchar(50),
  package char(2),
  weight varchar(8),
  remark varchar(50),
  safety_stock int);
  

insert into Drugs values(201,"ACEBROTE Tablet",80,120,"Cipla Ltd (Generics)","CIPLA INDIA","NM","200gm","Chills and Fever",100);
insert into Drugs values(202,"Clopicard Tablet",60,89,"Cipla Ltd (Generics)","CIPLA INDIA","NM","75mg","Rashes",50);
insert into Drugs values(203,"METFOR Tablet",20,24,"Cipla Ltd (Generics)","CIPLA INDIA","NM","500mg","Loss of Appetite",130);
insert into Drugs values(204,"Dericip Tablet",2,3,"Cipla Ltd (Generics)","CIPLA INDIA","NM","77mg","Headache",10);
insert into Drugs values(205,"Nicip Tablet",50,77,"Cipla Ltd (Generics)","CIPLA INDIA","NM","375mg","Vomiting",100);
insert into Drugs values(206,"Cephadex 500mg Capsule",100,142,"Cipla Ltd (Generics)","CIPLA INDIA","NM","500mg","Stomach Pain",80);
insert into Drugs values(207,"Roxee Tablet",80,120,"Cipla Ltd (Generics)","CIPLA INDIA","NM","150mg","Nausea",120);
insert into Drugs values(208,"Tercan M Gel ",90,116,"Cipla Ltd (Generics)","CIPLA INDIA","NM","10gm","Skin Peeling",50);
insert into Drugs values(209,"Lipvas Tablet",100,133,"Cipla Ltd (Generics)","CIPLA INDIA","NM","20mg","Joint Pain",10);
insert into Drugs values(210,"VOMISTOP Tablet",10,24,"Cipla Ltd (Generics)","CIPLA INDIA","NM","10mg","Dry Mouth",15);

select * from Drugs;