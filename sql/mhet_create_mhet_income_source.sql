-- create source of income or source of money obtained such as salary, loan, return on investments, etc./

create table mhet_income_source(
	income_source_type_nm varchar(100) not null,
	income_source_type_desc varchar(200) not null,
	source_name varchar(200) not null,
	source_ref_id varchar(50) not null,
	recd_dt date not null,
	amount decimal(12,2) not null,
	comments varchar(50),
	created_dt datetime not null default getdate(),
	created_by varchar(30) not null,
	last_updated_dt datetime not null,
	last_updated_by varchar(30) not null
	constraint mhet_income_source_pk primary key(source_ref_id)
	);
-- add references from mhet_income_source_type table
alter table mhet_income_source with check add constraint mhet_income_source_fk foreign key 
(income_source_type_nm,income_source_type_desc) references mhet_income_source_type(income_source_type_nm,income_source_type_desc);
