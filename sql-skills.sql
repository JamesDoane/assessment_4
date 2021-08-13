--artist table
insert into artist(name) values ('Arctic Monkeys');
insert into artist(name) values ('Lamb of God');
insert into artist(name) values ('Dimmu Borgir');
select * from artist limit = 5; 

--employee table
select * from employee where city = 'Calgary';

SELECT * FROM employee WHERE reports_to = 2;

select count(employee) from employee where city = 'Lethbridge';

--invoice table
select * from invoice where billing_country = 'USA'

select max(total) from invoice;

select min(total) from invoice;

select * from invoice where total > 5;

select count(invoice) from invoice where total < 5;

select sum(total) from invoice;

--Join queries
select * from invoice i 
    join invoice_line il on i.invoice_id = il.invoice_id 
        where unit_price >.99;

select i.invoice_date, c.first_name, c.last_name from invoice i
    join customer c on i.customer_id = c.customer_id;

select c.first_name as customer_first, c.last_name as customer_last, e.first_name as sales_rep_first, e.last_name as sales_rep_last
from customer c
    join employee e
        on c.support_rep_id = e.employee_id;

select al.title as album_title, ar.name as artist_name from album al
    join artist ar on ar.artist_id=al.artist_id
        order by ar.name;