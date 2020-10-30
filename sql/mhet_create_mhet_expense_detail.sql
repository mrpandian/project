-- create MHET expense detail table

create table mhet_expense_detail(
	customer_id bigint not null,
	budget_id varchar(7) not null,
	budget_item_nm varchar(50) not null,
	expense_category_nm varchar(100) not null,
	expense_category_item varchar(100) not null,
	expense_frequency_nm varchar(50), 
	payment_type_id varchar(50) not null,
	payment_type_nm varchar(50) not null,
	expense_amount integer not null, 
	expense_dt     date not null,
	expense_note   varchar(200),
	created_by     varchar(30) not null,
    created_dt     date  default getdate() not null,
	updated_by     varchar(30),
    updated_dt     date

	constraint mhet_expense_detail_pk primary key (expense_category_nm,expense_category_item),
	constraint mhet_expense_detail_fk1 foreign key (expense_category_nm,expense_category_item)
		references mhet_expense_category_item(expense_category_nm,expense_category_item),
	constraint mhet_expense_detail_fk2 foreign key (expense_frequency_nm) references mhet_expense_frequency(expense_frequency_nm),
    constraint mhet_expense_detail_fk3 foreign key (customer_id,budget_id,budget_item_nm)
		references mhet_budget_detail(customer_id,budget_id,budget_item_nm),
    constraint mhet_expense_detail_fk4 foreign key (payment_type_id,payment_type_nm)
		references mhet_payment_type(payment_type_id,payment_type_nm)

);
