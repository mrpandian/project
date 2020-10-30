-- create MHET budget table

create table mhet_budget(
customer_id bigint not null,
budget_id varchar(7) not null, -- example: 'JAN2018' is monthly, 'Q12018' is quarterly, 'H12018' is Half-Yearly, 'AY2018' is annual budget(calendar year),'FY2018' for annual budget (Fiscal year)
budget_period_indicator char(1) default 'M', -- 'M' is Monthly, 'Q' is quarterly, 'H' is Half-yearly, 'Y' is annual
budget_revision_id tinyint default 1 not null,
budget_requested_amount int,
budget_approved_amount int,
budget_status varchar(30) default 'NEW' not null,
budget_prepared_dt datetime,
budget_prepared_by varchar(30),
budget_approved_by varchar(30),
budget_approved_dt varchar(30),
budget_closed_by varchar(30),
budget_closed_dt datetime,
created_by varchar(30) not null,
created_dt datetime not null default getdate(),
constraint mhet_budget_pk primary key (customer_id,budget_id,),
constraint mhet_budget_fk1 foreign key (customer_id) references mhet_customer(customer_id),
constraint mhet_budget_ck1 check (budget_status in ('NEW','PENDING APPROVAL','APPROVED','CLOSED')),
constraint mhet_budget_ck2 check (budget_period_indicator in ('M','Q','H','Y'))
);

insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'MAR2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'APR2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'MAY2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'JUN2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'JUL2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'AUG2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'SEP2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'OCT2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'NOV2018','M','pandian',GETDATE());
insert into mhet_budget(customer_id,budget_id,budget_period_indicator,created_by,created_dt)  values(1,'DEC2018','M','pandian',GETDATE());
