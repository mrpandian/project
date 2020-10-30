-- create customer master tab;e

create table mhet_customer(
	customer_id bigint identity primary key,
	customer_first_name varchar(40) not null,
	customer_last_name varchar(40),
	customer_middle_name varchar(40),
	address_line1 varchar(100),
	address_line2 varchar(100),
	city varchar(50) not null,
	customer_state varchar(50) not null,
	country varchar(50) not null,
	email_id varchar(50) not null,
	contact_phone1 varchar(12) not null,
	contact_phone2 varchar(12)
);

insert into mhet_customer (customer_first_name,city,customer_state,country,email_id,contact_phone1)
values('Soundrapandian','Bengaluru','Karnataka','India','govindan.pandian@gmail.com','9342469562');
