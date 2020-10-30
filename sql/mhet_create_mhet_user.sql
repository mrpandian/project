-- create MHET user table

create table mhet_user(
customer_id bigint not null,
customer_user_id varchar(30) not null,
user_first_nm varchar(50) not null,
user_middle_nm varchar(50),
user_last_nm varchar(50) not null,
customer_passwd varchar(30) not null,
user_status_cd varchar(30) not null,
last_logon_date datetime,
created_by varchar(30) not null,
created_dt datetime not null default getdate(),
updated_by varchar(30),
updated_dt datetime,

constraint mhet_use_pk primary key(customer_id,customer_user_id),
constraint mhet_user_ck check (user_status_cd in ('NEW','ACTIVE','INACTIVE','DISABLED','DELETED'))
);

insert into mhet_user(customer_id,customer_user_id,user_first_nm,user_last_nm,customer_passwd,user_status_cd,created_by,created_dt)
values(1,'pandian','pandian','Soundrapandian','Govindan','NEW','pandian',GETDATE())
