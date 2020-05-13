use shop;

select concat(customer.first_name,' ', customer.last_name) as CustomerName , seller.name as SellerName, sales.amount, 
DATEDIFF(CURRENT_DATE(),STR_TO_DATE(date_of_birth,'%Y-%m-%d'))/365 as age
	from customer
	inner join sales on sales.customer_id = customer.id
    inner join seller on seller.id = sales.seller_id
    where seller.gender = 'female'
    and  DATEDIFF(CURRENT_DATE(),STR_TO_DATE(date_of_birth,'%Y-%m-%d'))/365 > 25
    order by amount;
    
