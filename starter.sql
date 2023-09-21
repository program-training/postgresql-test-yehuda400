-- שאלה 1
select * from employees

-- שאלה 2
select count(products.product_id) from products

-- שאלה 4
select * from products
where products.supplier_id = 2
order by products.unit_price desc
limit 3

-- שאלה 7
select categories.category_name, avg(products.unit_price) as categorys_avg_price
from categories 
join products
on products.category_id = categories.category_id
group by categories.category_name
order by categorys_avg_price desc
limit 5

-- שאלה 8
select employees.first_name, employees.last_name, territories.territory_description
from employees 
join employee_territories ON employee_territories.employee_id = employees.employee_id
join territories ON territories.territory_id = employee_territories.territory_id

-- שאלה 9
select * from (
	select employees.first_name, employees.last_name, count(orders.order_id) as amount_of_orders
	from employees join orders ON orders.employee_id = employees.employee_id
	group by employees.first_name, employees.last_name
) where amount_of_orders > 100

