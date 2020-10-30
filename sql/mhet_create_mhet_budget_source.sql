-- This table one or more source of income to a budget

create table mhet_budget_source(
customer_id bigint not null,
budget_id varchar(7) not null, -- example: 'JAN2018' is monthly, 'Q12018' is quarterly, 'H12018' is Half-Yearly, 'AY2018' is annual budget(calendar year),'FY2018' for annual budget (Fiscal year)
source_ref_id varchar(50) not null,
created_by varchar(30) not null,
created_dt datetime not null default getdate(),

constraint mhet_budget_source_pk primary key (customer_id,budget_id,source_ref_id),
constraint mhet_budget_source_fk1 foreign key (customer_id,budget_id) references mhet_budget(customer_id,budget_id),
constraint mhet_budget_source_fk2 foreign key (source_ref_id) references mhet_income_source(source_ref_id)
);

insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'MAR2018','MuthootLoanMAR2018-149850','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'MAR2018','Ammamma40000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'MAR2018','ArtechF&F85666','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'APR2018','Rajendran25000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'MAY2018','MuthootLoanMay2018-351211','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'MAY2018','Ammamma35000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'JUN2018','Paul150000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'JUN2018','AmmammaChitfund25000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'JUL2018','MuthootJUL2018-296000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'JUL2018','ArtechRefund34913','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'JUL2018','KaviJul2018-100000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'AUG2018','ITR AY 2013-14 13620','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'SEP2018','GoatSold11000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'SEP2018','KadalurKrishna80000','pandian');
insert into mhet_budget_source(customer_id,budget_id,source_ref_id,created_by) values(1,'SEP2018','ITR AY 2018-19 53000','pandian');

