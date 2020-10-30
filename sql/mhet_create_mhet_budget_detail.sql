create table mhet_budget_detail(
customer_id bigint not null,
budget_id varchar(7) not null,
budget_item_nm varchar(50),
budget_item_amount int,
budget_item_remark varchar(100),
item_entered_by varchar(30) not null,
item_entered_dt datetime not null
constraint mhet_budget_detail_pk primary key(customer_id,budget_id,budget_item_nm),
constraint mhet_budget_detail_fk1 foreign key (customer_id,budget_id) references mhet_budget(customer_id,budget_id)
);
