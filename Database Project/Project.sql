create table providers (
	providerID varchar(5) not null,
	provider_name varchar(30) not null,
	phone_number varchar(12) not null,
	address varchar(50) not null,
	constraint provider_pk primary key(providerID));


create table import (
	importID varchar(5) not null,
	providerID varchar(5) not null,
	date date not null,
	constraint import_pk primary key(importID),
	constraint provider_fK foreign key (providerID) references providers(providerID));

create table products (
	productID varchar(5) not null,
	name varchar(30) not null,
	price_in int not null,
	price_out int not null,
    sold int not null,
	quantity int not null,
	constraint product_pk primary key(productID));

create table importdetail (
	importID varchar(5) not null,
	productID varchar(5) not null,
	quantity int not null,
    constraint imp_pk primary key (importID, productID),
	constraint import_fk foreign key (importID) references import(importID),
	constraint product_fk1 foreign key (productID) references products(productID));

create table customers (
	customerID varchar(5) not null,
	customer_name varchar(30) not null,
    email varchar(30) not null,
	phone_number varchar(12) not null,
	address varchar(50) not null,
	total_money_ordered int not null,
	ranking varchar(10) CHECK (ranking IN ('Bronze','Silver','Gold')),
	constraint customer_pk primary key(customerID));

create table orders (
	orderID varchar(5) not null,
	customerID varchar(5) not null,
	date date not null,
    status varchar(10) not null CHECK (status IN ('Pending','Shipping','Resolved')),
	constraint order_pk1 primary key (orderID),
	constraint cutomer_fk1 foreign key (customerID) references customers(customerID));
    
create table orderdetail (
	orderID varchar(5) not null,
	productID varchar(5) not null,
	quantity int not null,
	constraint order_pk2 primary key (orderID, productID),
	constraint cutomer_fk2 foreign key (orderID) references orders(orderID),
	constraint product_fk2 foreign key (productID) references products(productID));

create table cart (
	customerID varchar(5) not null,
	productID varchar(5) not null,
	quantity int not null,
    constraint cart_pk primary key (customerID, productID),
	constraint customer_fk3 foreign key (customerID) references customers(customerID),
	constraint product_fk3 foreign key (productID) references products(productID));

drop table providers;
drop table customers;
drop table import;
drop table products;
drop table orders;
drop table importdetail;
drop table orderdetail;
drop table cart;
	
-- provider 
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR001', 'Noodle', '0353-888-001', 'Hai Duong');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR002', 'Sausage', '0353-888-002', 'Nghe An');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR003', 'Water', '0353-888-003', 'Ha Noi');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR004', 'Snack', '0353-888-004', 'Bac Giang');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR005', 'Chocolate', '0353-888-005', 'Hai Duong');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR006', 'Milk', '0353-888-006', 'Quang Ninh');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR007', 'IceCream', '0353-888-007', 'Ha Noi');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`) VALUES ('PR008', 'Cookie', '0353-888-008', 'Bac Ninh');

-- customer
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS001', 'Do Hong Hai', 'haidh@gmail.com', '0353-999-001', 'Hai Ba Trung, Ha Noi', '2900000', 'Bronze');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS002', 'Tran Anh', 'anht@gmail.com', '0353-999-002', 'Hai Ba Trung, Ha Noi', '8000000', 'Silver');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS003', 'Tran Thuy Chau', 'chautt@gmail.com', '0353-999-003', 'Thanh Xuan, Ha Noi', '5000000', 'Silver');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS004', 'Doan Anh Khoa', 'khoada@gmail.com', '0353-999-004', 'Hoang Mai, Ha Noi', '6000000', 'Silver');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS005', 'Nguyen Cong Duy', 'duync@gmail.com', '0353-999-005', 'Hoang Mai, Ha Noi', '5500000', 'Silver');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS006', 'Vu Duc Minh', 'minhvd@gmail.com', '0353-999-006', 'Thanh Xuan, Ha Noi', '4000000', 'Bronze');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS007', 'Pham Quang Huy', 'huypq@gmail.com', '0353-999-007', 'Ha Dong, Ha Noi', '2500000', 'Bronze');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS008', 'Do Van Cuong', 'cuongdv@gmail.com', '0353-999-008', 'Dong Da, Ha Noi', '1000000', 'Gold');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS009', 'Bui Xuan Dieu', 'dieubx@gmail.com', '0353-999-009', 'Hoan Kiem, Ha Noi', '4500000', 'Bronze');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`, `ranking`) VALUES ('CS010', 'Nguyen Van Hanh', 'hanhnv@gmail.com', '0353-999-010', 'Tay Ho, Ha Noi', '900000', 'Bronze');

-- products
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR001', 'Lavie', '4500', '6000', '900', '150');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR002', 'Aquafina', '4000', '5000', '850', '150');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR003', 'Dasani', '4000', '5000', '800', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR004', 'Milo', '9000', '11000', '850', '130');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR005', 'TH True Milk', '25000', '27000', '700', '90');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR006', 'Coca Cola', '8500', '10000', '1200', '170');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR007', '7Up', '9000', '10000', '1000', '160');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR008', 'Latte', '8000', '10000', '600', '110');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR009', 'Yomost', '10000', '11000', '800', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('DR010', 'C2', '10000', '12000', '650', '100');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD001', 'OREO', '17000', '19000', '600', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD002', 'CreamO', '16500', '18000', '500', '140');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD003', 'Lays Snack', '20000', '22000', '950', '100');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD004', 'CP Sausage', '47000', '18000', '500', '90');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD005', 'Oishi Snack', '3500', '5000', '700', '80');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD006', 'Omachi', '5000', '6000', '800', '130');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD007', 'HaoHao', '3000', '5000', '900', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD008', 'KitKat', '22000', '25000', '500', '90');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD009', 'Celano', '16000', '18000', '750', '60');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('FD010', 'Walls', '17000', '20000', '800', '70');

-- import
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM001', 'PR001', '2022-11-15');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM002', 'PR001', '2022-12-15');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM003', 'PR002', '2022-11-10');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM004', 'PR003', '2022-09-20');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM005', 'PR003', '2022-10-20');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM006', 'PR003', '2022-12-20');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM007', 'PR004', '2022-11-10');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM008', 'PR004', '2022-12-10');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM009', 'PR005', '2022-10-30');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM010', 'PR006', '2022-12-30');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM011', 'PR008', '2022-12-31');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM012', 'PR007', '2022-10-15');

-- import detail
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM001', 'FD006', '50');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM002', 'FD007', '30');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM003', 'FD004', '40');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM004', 'DR007', '90');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM005', 'DR002', '100');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM006', 'DR006', '80');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM007', 'FD003', '60');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM008', 'FD005', '60');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM009', 'FD008', '50');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM010', 'DR009', '80');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM011', 'FD001', '60');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM012', 'FD010', '50');

-- orders
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD001', 'CS001', '2023-02-15', 'Shipping');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD002', 'CS002', '2023-02-16', 'Pending');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD003', 'CS003', '2023-02-14', 'Shipping');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD004', 'CS004', '2023-02-12', 'Shipping');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD005', 'CS005', '2023-02-10', 'Resolved');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD006', 'CS006', '2023-02-09', 'Shipping');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD007', 'CS007', '2023-02-15', 'Shipping');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD008', 'CS008', '2023-02-17', 'Pending');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD009', 'CS009', '2023-02-16', 'Pending');
INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD010', 'CS010', '2023-02-10', 'Resolved');

-- order detail
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD001', 'DR001', '30');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD001', 'DR002', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD002', 'FD002', '10');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD002', 'FD010', '10');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD003', 'FD004', '10');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD003', 'FD003', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD004', 'DR006', '50');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD005', 'DR009', '15');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD006', 'FD010', '30');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD007', 'FD008', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD009', 'FD003', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD010', 'DR004', '20');

-- cart
INSERT INTO `project`.`cart` (`customerID`, `productID`, `quantity`) VALUES ('CS001', 'FD001', '10');
INSERT INTO `project`.`cart` (`customerID`, `productID`, `quantity`) VALUES ('CS002', 'DR001', '20');
INSERT INTO `project`.`cart` (`customerID`, `productID`, `quantity`) VALUES ('CS003', 'FD010', '10');
INSERT INTO `project`.`cart` (`customerID`, `productID`, `quantity`) VALUES ('CS004', 'FD001', '10');
INSERT INTO `project`.`cart` (`customerID`, `productID`, `quantity`) VALUES ('CS005', 'FD005', '30');
INSERT INTO `project`.`cart` (`customerID`, `productID`, `quantity`) VALUES ('CS006', 'DR004', '15');
INSERT INTO `project`.`cart` (`customerID`, `productID`, `quantity`) VALUES ('CS007', 'DR009', '20');

-- View genInventory
create view genInventory as
select * from products;

select * from genInventory;

-- View genProductorder

-- create view genProductorder as
-- select OD.orderID, group_concat(P.name separator ', ') as products, P.price_out, OD.quantity, sum(OD.quantity*P.price_out) as total
-- from orderdetail OD
-- join products P on OD.productID = P.productID
-- group by OD.orderID;

create view genProductorder as
select OD.orderID, P.name, P.price_out, OD.quantity, sum(OD.quantity*P.price_out) as total
from orderdetail OD
join products P on OD.productID = P.productID
group by OD.orderID, P.productID;

drop view genProductorder;
select * from genProductorder;

-- View genorder
create view genorder as
select O.orderID, C.customer_name, O.date, sum(PO.total) as total, O.status
from orders O 
join genProductorder PO on O.orderID = PO.orderID
join customers C on O.customerID = C.customerID
group by O.orderID;

select * from genorder;
drop view genorder;
-- View genCustomer
create view genCustomer as
select customerID, customer_name, address, phone_number, ranking
from customers;

select * from genCustomer;
drop view genCustomer;

-- View genProvider
create view genProvider as 
select providerID, provider_name, address, phone_number
from providers;

select * from genProvider;

-- Trigger update rank when insert
CREATE TRIGGER set_customer_rank
BEFORE INSERT ON customers
FOR EACH ROW
SET NEW.ranking =
	CASE
		WHEN NEW.total_money_ordered >= 10000000 THEN 'Gold'
		WHEN NEW.total_money_ordered >= 5000000 THEN 'Silver'
		ELSE 'Bronze'
END;

-- Trigger update rank when update
CREATE TRIGGER update_customer_rank
BEFORE UPDATE ON customers
FOR EACH ROW
SET NEW.ranking =
	CASE
		WHEN NEW.total_money_ordered >= 10000000 THEN 'Gold'
		WHEN NEW.total_money_ordered >= 5000000 THEN 'Silver'
		ELSE 'Bronze'
END;

UPDATE `project`.`customers` SET `total_money_ordered` = '12000000' WHERE (`customerID` = 'CS011');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`) VALUES ('CS011', 'ABC', 'abc@gmail.com', '0353-999-011', 'Hoan Kiem, Ha Noi', '6000000');
INSERT INTO `project`.`customers` (`customerID`, `customer_name`, `email`, `phone_number`, `address`, `total_money_ordered`) VALUES ('CS012', 'AC', 'ac@gmail.com', '0353-999-012', 'Hoan Kiem, Ha Noi', '12000000');
drop trigger set_customer_rank;

-- Trigger update quantity when import 
CREATE TRIGGER update_quantity_product
AFTER INSERT ON importdetail 
FOR EACH ROW
	UPDATE products
	SET quantity = quantity + NEW.quantity
	WHERE productID = NEW.productID;

INSERT INTO `project`.`import` (`importID`, `providerID`, `date`) VALUES ('IM013', 'PR007', '2022-10-16');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM013', 'FD010', '900');


-- Trigger check product quantity when order
DELIMITER |
CREATE TRIGGER check_product_quantity
BEFORE INSERT ON orderdetail
FOR EACH ROW
BEGIN
    DECLARE product_quantity INT;
    SELECT quantity INTO product_quantity FROM products WHERE productID = NEW.productID;    
    IF product_quantity < NEW.quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product quantity insufficient';
    ELSE
        UPDATE products SET quantity = quantity - NEW.quantity WHERE productID = NEW.productID;
    END IF;
END; 
|
DELIMITER ;

drop trigger check_product_quantity;

INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD011', 'CS010', '2023-02-11', 'Pending');
DELETE FROM `project`.`orders` WHERE (`orderID` = 'OD011');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD011', 'DR001', '300');
DELETE FROM `project`.`orderdetail` WHERE (`orderID` = 'OD011');