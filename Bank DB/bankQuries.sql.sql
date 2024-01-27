select loan_name, amount
from loan
where amount > 1200;

select c.customer_name, d.account_number
from customer c
left outer join deposite d on c.customer_name = d.customer_name;

select * from employee
where employee_name like '_a%';

select c.customer_name, sum(l.amount) as total_loans from (customer c natural join borrows b) natural join loan l
group by c.customer_name
order by total_loans desc;


select c.customer_name, sum(l.amount) as total_loans from (customer c natural join borrows b) natural join loan l
group by c.customer_name
order by total_loans desc;

select c.customer_name, sum(l.amount) as total_loans from (customer c natural join borrows b) natural join loan l
group by c.customer_name
having sum(l.amount) > 1200
order by total_loans desc;
 
select max(amount) from loan;

select c.customer_name, sum(l.amount) as total_loans from (customer c natural join borrows b) natural join loan l
group by c.customer_name
having total_loans > ( select max(amount) from loan )
order by total_loans desc;

select customer_name from customer 
where customer_name in (select customer_name from deposite) union (select customer_name from borrows);

select customer_name from customer 
where customer_name in (select customer_name from deposite) intersect (select customer_name from borrows);


select bor.customer_name from (borrows bor natural join loan l) natural join branch b
where b.branch_name = 'Perryridge';


select bor.customer_name from (borrows bor natural join loan l) natural join branch b
where b.branch_name = 'Perryridge' and customer_name not in ( select customer_name from deposite) ;


select d.customer_name from (deposite d natural join account a) natural join branch b
where b.branch_name in ( 'Downtown', 'Mianus');


select avg(amount) as average_loans from loan;


select d.customer_name, d.account_number from (deposite d natural join account a) natural join branch b
where b.city = 'Brooklyn';
