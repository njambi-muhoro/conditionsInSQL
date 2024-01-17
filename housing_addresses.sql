alter table house_addresses
	rename state_abr2 to state_abbrev;

insert into house_addresses
values ('123 main street', 'austin','AX', null, '78704');

insert into house_addresses
values ('124 george street', 'lucy','BX', null, '78703');

insert into house_addresses
values ('125 main station', 'brian','CX', null, '78702');

insert into house_addresses
values ('126 sheppard street', 'dominic','TX', null, '78701');

select
*
from house_addresses
;

select
*
from house_addresses
where city = 'austin'
;

select
*
from house_addresses
where city = 'lucy'
and street = '124 george street'
;

select
*
from house_addresses
where city = 'lucy'
and (street = '124 george street'
	or state_abbrev = 'Ax'
	)
;

delete from house_addresses
where city = 'austin';

insert into house_addresses
values('123 main street', 'austin', 'TX', null, 78704);
insert into house_addresses
values('5800 webster street', 'austin', 'TX', null, 78704);

update house_addresses
set city = 'george'
where street = '5800 webster street';

alter table house_addresses
add unique_id bigint;