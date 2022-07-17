select *   from customer where country like 'Canada';
select country from customer ;
select  count (total_amount) from orders;
select count(*) from orders;
select max(total_amount) from orders;
select sum(total_amount) from orders;
select sum(total_amount) from  orders where order_date between to_timestamp('2014-00-01 00:00:00.000000') and to_timestamp('2014-31-12 00:00:00.000000');
select  avg(total_amount) from orders;
select first_name, avg(total_amount)
from customer join orders o on customer.id = o.customer_id group by first_name;
select  * from customer where country  in ('Brazil','Spain');
select * from orders where order_date between '01-01-2013' and '31-12-2014' and total_amount< 100;
select  distinct first_name,country from customer where country in ('Italy','Spain','Germany','France') order by country;
select customer.country,supplier.country from supplier,customer where supplier.country=customer.country;
select first_name from customer where first_name like ('Jo%');
select first_name from customer where first_name like('___a');
select count(*),customer.country from customer group by customer.country order by count(*) desc;
select sum(total_amount),count(*),orders.customer_id from orders join customer c on c.id=orders.customer_id  group by customer_id order by sum(total_amount) desc;
select sum(total_amount),count(*), orders.customer_id from orders join customer c on c.id = orders.customer_id where customer_id > 20 group by orders.customer_id;

