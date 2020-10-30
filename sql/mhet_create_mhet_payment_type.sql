-- This table maintain payment types which can be referenced in expenses

create table mhet_payment_type (
	customer_id bigint not null,
	payment_type_id varchar(50) not null,
	payment_type_nm varchar(50) not null,
	created_by varchar(30),
	created_dt datetime,

	constraint mhet_payment_type_pk primary key(payment_type_id,payment_type_nm),
	constraint mhet_payment_type_fk foreign key (customer_id) references mhet_customer(customer_id)
);

insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Internet Banking','ICICI(Pandian)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Internet Banking','ICICI(Pawana)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Debit Card','ICICI(Pandian)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Debit Card','ICICI(Pawana)','pandian',getdate());

insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Internet Banking','Indian Bank(Pandian)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Internet Banking','Indian Bank(Gayathri)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Debit Card','Indian Bank(Pandian)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Debit Card','Indian Bank(Gayathri)','pandian',getdate());

insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Internet Banking','Canara Bank(Pandian)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Internet Banking','Canara Bank(Gayathri)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Debit Card','Canara Bank(Pandian)','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Debit Card','Canara Bank(Gayathri)','pandian',getdate());


insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Credit Card','SCB(Pandian)','pandian',getdate());

insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Cash','Cash','pandian',getdate());

insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Paytm','Pandian','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Paytm','Gayathri','pandian',getdate());
insert into mhet_payment_type(customer_id,payment_type_id,payment_type_nm,created_by,created_dt)
values(1,'Paytm','Pawana','pandian',getdate());
