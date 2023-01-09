use test;

drop table salaries;

create table  salaries (
gender varchar(1),
age int,
salary double,
zipcode int
);

load data local infile '/home/cloudera/Sqoop_task/salaries.txt' into table salaries fields terminated by ',';

alter table salaries add column `id` int(10) unsigned primary KEY AUTO_INCREMENT;

commit;
