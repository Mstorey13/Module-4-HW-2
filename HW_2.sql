-- Alter 
alter table concessions 
alter column food_id
drop not null;

select sub_total
from concessions;

update concessions 
set sub_total = '72.99'
where sub_total = '72.99' and food_id = 1;

select *
from concessions;

alter table customer 
add email varchar(150);

update customer 
set email = 'Howdy123@hotmail.com'
where customer_id =  1;

select *
from customer

