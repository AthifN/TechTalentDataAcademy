show databases;
create database shop_inventory;
USE shop_inventory;
create table stock(
	product_code int auto_increment,
	product_type char(25) not null,
    product_brand varchar(25) not null,
    product_model varchar(25),
    rrp decimal(6,2) not null,
    no_of_units int,
    size char(3) not null,
    gender char(3) not null,
    PRIMARY KEY (product_code)
    );
ALTER TABLE stock
	MODIFY size varchar(3) not null;

ALTER TABLE stock
		MODIFY size varchar (4) not null;
    
INSERT INTO  stock( product_type, product_brand, product_model, rrp, no_of_units, size, gender)
	values ('shoes', 'Nike', 'Air Force 1 07', 99.99, 20, 10.5, 'M');     

SELECT * FROM stock;

INSERT INTO stock( product_type, product_brand, product_model, rrp, no_of_units, size, gender)
		values ('shoes', 'Adidas', 'Superstar', 79.99, 10, 10, 'Uni'),
		('jacket', 'Trapstar', 'Hyperdrive Zip Hooded', 90.00,'5','L', 'M'),
        ('jacket', 'Trapstar', 'Hyperdrive Zip Hooded', 90.00, '5', 'M', 'M'),
        ('jacket', 'Trapstar', 'Hyperdrive Zip Hooded', 90.00, '5', 'M', 'S'),
        ('shoes', 'Adidas', 'Superstar', 79.99, 10, 9, 'Uni'),
        ('headwear', 'Carhartt', 'Watch Beanie', 15.95, 20, 'Uni', 'Uni');
        
        
        