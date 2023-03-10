create table providers (
	providerID varchar(5) not null,
	provider_name varchar(30) not null,
	phone_number varchar(12) not null,
	address varchar(50) not null,
    email varchar(30) not null,
	constraint provider_pk primary key(providerID));


create table import (
	importID varchar(5) not null,
	providerID varchar(5) not null,
	date date not null,
    status varchar(10) not null CHECK (status IN ('Checked','Unchecked', 'Rejected')),
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
    status varchar(10) not null CHECK (status IN ('Pending','Shipping','Resolved', 'Rejected')),
	constraint order_pk1 primary key (orderID),
	constraint cutomer_fk1 foreign key (customerID) references customers(customerID));
    
create table orderdetail (
	orderID varchar(5) not null,
	productID varchar(5) not null,
	quantity int not null,
	constraint order_pk2 primary key (orderID, productID),
	constraint cutomer_fk2 foreign key (orderID) references orders(orderID),
	constraint product_fk2 foreign key (productID) references products(productID));



drop table providers;
drop table customers;
drop table import;
drop table products;
drop table orders;
drop table importdetail;
drop table orderdetail;


-- provider 
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR001', 'Noodle', '0353-888-001', 'Hai Duong', 'noodle@gmail.com');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR002', 'Sausage', '0353-888-002', 'Nghe An', 'sausage@gmail.com');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR003', 'Water', '0353-888-003', 'Ha Noi', 'water@gmail.com');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR004', 'Snack', '0353-888-004', 'Bac Giang', 'snack@gmail.com');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR005', 'Chocolate', '0353-888-005', 'Hai Duong', 'chocolate@gmail.com');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR006', 'Milk', '0353-888-006', 'Quang Ninh', 'milk@gmail.com');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR007', 'IceCream', '0353-888-007', 'Ha Noi', 'icecream@gmail.com');
INSERT INTO `project`.`providers` (`providerID`, `provider_name`, `phone_number`, `address`, `email`) VALUES ('PR008', 'Cookie', '0353-888-008', 'Bac Ninh', 'cookie@gmail.com');

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
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD001', 'Lavie', '4500', '6000', '900', '150');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD002', 'Aquafina', '4000', '5000', '850', '150');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD003', 'Dasani', '4000', '5000', '800', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD004', 'Milo', '9000', '11000', '850', '130');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD005', 'TH True Milk', '25000', '27000', '700', '90');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD006', 'Coca Cola', '8500', '10000', '1200', '170');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD007', '7Up', '9000', '10000', '1000', '160');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD008', 'Latte', '8000', '10000', '600', '110');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD009', 'Yomost', '10000', '11000', '800', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD010', 'C2', '10000', '12000', '650', '100');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD011', 'OREO', '17000', '19000', '600', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD012', 'CreamO', '16500', '18000', '500', '140');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD013', 'Lays Snack', '20000', '22000', '950', '100');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD014', 'CP Sausage', '47000', '18000', '500', '90');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD015', 'Oishi Snack', '3500', '5000', '700', '80');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD016', 'Omachi', '5000', '6000', '800', '130');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD017', 'HaoHao', '3000', '5000', '900', '120');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD018', 'KitKat', '22000', '25000', '500', '90');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD019', 'Celano', '16000', '18000', '750', '60');
INSERT INTO `project`.`products` (`productID`, `name`, `price_in`, `price_out`, `sold`, `quantity`) VALUES ('PD020', 'Walls', '17000', '20000', '800', '70');

-- import
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM001', 'PR001', '2023-02-15', 'Unchecked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM002', 'PR001', '2023-01-15', 'Checked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM003', 'PR002', '2023-02-20', 'Unchecked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM004', 'PR003', '2023-02-20', 'Unchecked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM005', 'PR003', '2023-01-20', 'Checked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM006', 'PR003', '2023-01-15', 'Checked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM007', 'PR004', '2023-02-23', 'Unchecked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM008', 'PR004', '2023-01-15', 'Checked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM009', 'PR005', '2023-01-30', 'Checked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM010', 'PR006', '2023-02-05', 'Checked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM011', 'PR008', '2023-02-24', 'Unchecked');
INSERT INTO `project`.`import` (`importID`, `providerID`, `date`, `status`) VALUES ('IM012', 'PR007', '2023-02-05', 'Checked');

-- import detail
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM001', 'PD016', '50');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM002', 'PD017', '30');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM003', 'PD014', '40');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM004', 'PD007', '90');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM005', 'PD002', '100');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM006', 'PD006', '80');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM007', 'PD013', '60');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM008', 'PD015', '60');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM009', 'PD018', '50');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM010', 'PD009', '80');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM011', 'PD011', '60');
INSERT INTO `project`.`importdetail` (`importID`, `productID`, `quantity`) VALUES ('IM012', 'PD020', '50');

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
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD001', 'PD001', '30');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD001', 'PD002', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD002', 'PD012', '10');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD002', 'PD020', '10');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD003', 'PD014', '10');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD003', 'PD013', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD004', 'PD006', '50');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD005', 'PD009', '15');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD006', 'PD020', '30');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD007', 'PD018', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD009', 'PD013', '20');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD010', 'PD004', '20');


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
DELIMITER |
CREATE TRIGGER update_product_quantity
AFTER UPDATE ON import
FOR EACH ROW
BEGIN
    IF NEW.status = 'Checked' AND OLD.status = 'Unchecked' THEN
        UPDATE products
        INNER JOIN importdetail ON products.productID = importdetail.productID
        SET products.quantity = products.quantity + importdetail.quantity
        WHERE importdetail.importID = NEW.importID;
    END IF;
END;
|
DELIMITER ;
	 
UPDATE `project`.`import` SET `status` = 'Checked' WHERE (`importID` = 'IM001');
UPDATE `project`.`import` SET `status` = 'Unchecked' WHERE (`importID` = 'IM001');
UPDATE `project`.`products` SET `quantity` = '130' WHERE (`productID` = 'PD016');


drop trigger update_quantity_product;

-- Trigger check product quantity when order
DELIMITER |
CREATE TRIGGER check_product_quantity
BEFORE UPDATE ON orders
FOR EACH ROW
BEGIN
    DECLARE product_quantity INT;
    DECLARE order_quantity INT;
    IF OLD.status = 'Pending' AND NEW.status = 'Shipping' THEN
        SELECT SUM(quantity) INTO order_quantity FROM orderdetail WHERE orderID = NEW.orderID;
        SELECT quantity INTO product_quantity FROM products WHERE productID IN (SELECT productID FROM orderdetail WHERE orderID = NEW.orderID);
        IF order_quantity > product_quantity THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product quantity insufficient';
        ELSE
            UPDATE products
            JOIN orderdetail ON products.productID = orderdetail.productID AND orderdetail.orderID = NEW.orderID
            SET products.quantity = products.quantity - orderdetail.quantity,
                products.sold = products.sold + orderdetail.quantity;
        END IF;
    END IF;
END |
DELIMITER ;


drop trigger update_products;
drop trigger check_product_quantity;

INSERT INTO `project`.`orders` (`orderID`, `customerID`, `date`, `status`) VALUES ('OD011', 'CS010', '2023-02-11', 'Pending');

DELETE FROM `project`.`orders` WHERE (`orderID` = 'OD011');
INSERT INTO `project`.`orderdetail` (`orderID`, `productID`, `quantity`) VALUES ('OD011', 'PD001', '30');
DELETE FROM `project`.`orderdetail` WHERE (`orderID` = 'OD011');
UPDATE `project`.`products` SET `sold` = '900', `quantity` = '150' WHERE (`productID` = 'PD001');

