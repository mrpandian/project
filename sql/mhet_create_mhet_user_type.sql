-- create MHET user type table

create table mhet_user_type(
	user_type_nm varchar(50) not null constraint mhet_user_type_pk primary key
);

insert into mhet_user_type (user_type_nm) values ('Father');
insert into mhet_user_type (user_type_nm) values ('Mother');
insert into mhet_user_type (user_type_nm) values ('Daughter');
insert into mhet_user_type (user_type_nm) values ('Son');
insert into mhet_user_type (user_type_nm) values ('Father-in-Law');
insert into mhet_user_type (user_type_nm) values ('Mother-in-Law');
insert into mhet_user_type (user_type_nm) values ('Daughter-in-Law');
insert into mhet_user_type (user_type_nm) values ('Son-in-Law');
insert into mhet_user_type (user_type_nm) values ('Brother');
insert into mhet_user_type (user_type_nm) values ('Sister');
insert into mhet_user_type (user_type_nm) values ('Grand Father');
insert into mhet_user_type (user_type_nm) values ('Grand Mother');
