use shop;

select concat(customer.first_name,' ', customer.last_name) as CustomerName , seller.name as SellerName, sum(sales.amount) as total
	from customer
	inner join sales on sales.customer_id = customer.id
    inner join seller on seller.id = sales.seller_id
    group by CustomerName
    order by total;
    