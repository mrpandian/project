create table mhet_user_role(
customer_id bigint not null,
customer_user_id varchar(30) not null,
role_id varchar(30) not null,
created_by varchar(30) not null,
created_dt datetime default getdate(),

constraint mhet_user_role_pk primary key (customer_id,customer_user_id,role_id),
constraint mhet_user_role_fk1 foreign key (customer_id,customer_user_id) references mhet_user(customer_id,customer_user_id),
constraint mhet_user_role_fk2 foreign key (role_id) references mhet_role(role_id)
);

insert into mhet_user_role(customer_id,customer_user_id,role_id,created_by) values(1,'pandian','Budget Approver','pandian');
insert into mhet_user_role(customer_id,customer_user_id,role_id,created_by) values(1,'pandian','Expense Entry','pandian');
insert into mhet_user_role(customer_id,customer_user_id,role_id,created_by) values(1,'pandian','Expense Manager','pandian');
