-- create expense category table
create table mhet_expense_category(
	expense_category_nm varchar(100), 
	expense_category_desc varchar(100)
	constraint expense_category_pk primary key (expense_category_nm)
);