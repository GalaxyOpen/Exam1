## member table
```
drop table if exists if exist member_tbl_02;
create table member_tbl_02(
custno bigint auto_increment primary key,
custname varchar(20),
phone varchar(11),
address varchar(60),
joindate date,
grade varchar(1),
city varchar(2)
```