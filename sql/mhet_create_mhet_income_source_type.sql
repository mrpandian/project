-- create source of income or source of money obtained such as salary, loan, return on investments, etc.
create table mhet_income_source_type(
	income_source_type_nm varchar(100) not null,
	income_source_type_desc varchar(200) not null
	constraint mhet_income_source_type_pk primary key (income_source_type_nm,income_source_type_desc)
);

-- load data
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Salary','Full-time');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Salary','Part-time');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Provident Fund','Withdrawal');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Loan','Provident Fund');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Borrowed','Borrowed from Friends/Relatives/Others');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Mortgage','Mortgage');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Pledge','Gold Pledge');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Mutual Fund','Mutual Fund');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bank Interest','Bank Interest on Savings Deposit');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bank Interest','Bank Interest on Fixed Deposit(FD)');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bank Interest','Bank Interest on Recurring Deposit(RD)');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Rent','House Rental Income');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Rent','Commercial Rental Income');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Rent','Land Rental Income');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Rent','House Lease Income');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Rent','Commercial Lease Income');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Rent','Land Lease Income');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Rent','Others');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Agriculture Income','Sale of Agriculture Products');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Sale of Cattle/Goats','Sale of Cattle/Goats');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('IT Refund','Income Tax Refund');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Returned by Borrower','Money returned by Borrower');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Fixed Deposit (FD)','Fixed Deposit (FD) Matured');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Recurring Deposit (FD)','Recurring Deposit (RD) Matured');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Shares Divested','Shares Divested');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bonus','Quarterly Bonus');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bonus','Half-Yearly Bonus');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bonus','Annaual Bonus');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bonus','Special Bonus');
insert into mhet_income_source_type(income_source_type_nm,income_source_type_desc)
values ('Bonus','Performance Bonus');
