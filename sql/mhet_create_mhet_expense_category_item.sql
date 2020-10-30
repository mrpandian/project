-- create expense category item table

create table mhet_expense_category_item(
	expense_category_nm varchar(100) not null constraint mhet_expense_category_item_fk1 references mhet_expense_category(expense_category_nm),
	expense_category_item varchar(100) not null,
	expense_category_item_desc varchar(100) not null

	constraint mhet_expense_category_item_pk primary key (expense_category_nm,expense_category_item)
);