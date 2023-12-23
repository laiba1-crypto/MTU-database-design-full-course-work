create table suppllier (
col1 int);
alter table supplier 
add column col2 int after name,
add column status int not null,
change column col1 Sno varchar(5) not null,
modify column col2  varchar(10),   
change column col2 Sname varchar(10),
alter column status set default '0';
alter table supplier
add constraint  primary key(Sno),
 drop status;
 
 create table shipment(
 Sno varchar(5) not null);
 alter table shipment
 add column Pno varchar(5) not null,
 add column Qty int,
 alter column Qty set default '0',
 add constraint primary  key(Pno),
 add constraint  primary key(Sno),
add constraint foreign  key(Sno) references supplier (Sno) ON UPDATE CASCADE ON DELETE RESTRICT ;

create table part (
Pno varchar(5));
alter table part
add constraint foreign  key(Pno) references spart ON UPDATE CASCADE ON DELETE RESTRICT ;







