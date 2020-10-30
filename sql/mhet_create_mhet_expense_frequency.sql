-- create mhet_expense frequency

create table mhet_expense_frequency(
	expense_frequency_nm varchar(50) not null,
	expense_frequency_desc varchar(100) not null
	constraint mhet_expense_frequency_pk primary key(expense_frequency_nm)
);



insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Daily','Daily expense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Weekly','Weekly expense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Monthly','Monthly expense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Fiscal Month','Fiscal month expense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Quarterly','Quarterly expense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Half-yearly','Half-yearly expenses');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Yearly','Yearly expenense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Fiscal Year','Fiscal year expense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Adhoc','Adhoc/petty expense');
insert into mhet_expense_frequency (expense_frequency_nm,expense_frequency_desc) values ('Unplanned/Unexpected','Unplanned/Unexpected expense');
