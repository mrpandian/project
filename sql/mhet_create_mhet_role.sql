-- create user role types

create table mhet_role(
role_id varchar(30) not null,
role_desc varchar(50) not null,
created_by_db_user varchar(30) not null,
created_by_os_user varchar(30) not null,
created_dt datetime not null default getdate(),

constraint mhet_role_pk primary key(role_id)
);

insert into mhet_role (role_id,role_desc) values('Budget Approver','Person who approve budget, also enter expenses');
insert into mhet_role (role_id,role_desc) values('Expense Manager','Person who request budget, enter & track expenses');
insert into mhet_role (role_id,role_desc) values('Expense Entry','Person who enter expenses');