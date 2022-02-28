SHOW DATABASES;
/* 
This is an example of two tables: one which shows the stock 
available and another which shows their location in a 
theoretical warehouse.

And yes, it's probably the most inefficient warehouse ever.
*/

SELECT * FROM stock;

INSERT INTO stock ( product_type, product_brand, product_model, rrp, no_of_units, size, gender)
				values ('shoes', 'Nike', 'Jordan 1 Mid', 175.00, 5, 10, 'Uni'),
                ('shoes', 'Nike', 'Air Force 1 07', 99.99, 5, 9, 'Uni'),
                ('shoes', 'Nike', 'Air Force 1 07', 99.99, 5, 8, 'Uni'),
                ('shoes', 'Adidas', 'Superstar', 79.99, 10, 9, 'Uni');
                
USE shop_inventory;
create table stock_location (
		product_code int,
        warehouse char(1) not null,
        aisle int not null,
        shelf char(1),
        PRIMARY KEY (product_code)
        );
        
 select * from stock_location;       
 
 insert into stock_location (product_code, warehouse, aisle, shelf)
			values (1, 'A', 1, 'A'),
				(2, 'A', 2, 'A'),
                (3, 'B', 1, 'A'),
                (4, 'B', 1, 'B'),
                (5, 'B', 1, 'C'),
                (6, 'A', 2, 'B'),
                (7, 'C', 1, 'A'),
                (8, 'A', 3, 'A'),
                (9, 'A', 1, 'B'),
                (10, 'A', 1, 'C'),
                (11, 'A', 2, 'B');

select stock.product_code, stock_location.product_code
	from stock
    inner join stock_location
    on stock.product_code = stock_location.product_code;

select*from stock, stock_location
		where stock.product_code = stock_location.product_code AND stock.product_brand = 'Nike';
        
select*from stock order by product_type asc;					
                
                