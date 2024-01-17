create table customerz (
	customer_id bigint,
	customer_name varchar(255),
	birth_year int,
	birth_month int,
	gender varchar(255),
	address varchar (255),
	address_2 varchar (255),
	city varchar(255),
	state_abr char(2),
	zip_code varchar(255),
	per_capita_income_by_zip_code decimal(14,2),
	yearly_income decimal(14,2)
);

select *
from 
customerz;

-- filtering the data of where the birth month is 3 and another condition
select *
from 
customerz
where 
birth_month = 3
and gender = 'Female'
or  state_abr = 'SC'