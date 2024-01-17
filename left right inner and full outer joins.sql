select 
*
from 
customers c
join state_only_tx s
on c.state_id = s.state_id;

select 
*
from customers c
left join state_only_tx s
on c.state_id = s.state_id;

-- we are creating a table with columns from the customers table that
--meet the condition where state_abr = 'ca'
create table states_only_ca as
select 
* 
from
states 
where state_abr = 'ca';

create table customer_only_ca as
select 
* 
from
customer_only_ca
--customers 
where state_id = customers.state_id

-- we are creating an inner join of the customers table and states_only_ca
select *
from customers c
join states_only_ca s
on c.state_id = s.state_id;

-- we are creating a left join where the data returned
--is the data in the left join customers table and matching data from the right
-- and all the data from the left that didn't find corresponding data on the right
select
*
from customers c
left join states_only_ca s
on c.state_id = s.state_id;

-- Right Join
select
*
from customer_only_ca c
right join states s
on c.state_id = s.state_id;
