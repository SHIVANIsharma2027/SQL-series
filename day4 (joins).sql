CREATE TABLE product (
    productcode VARCHAR(50) PRIMARY KEY,
    productname VARCHAR(100) NOT NULL,
    productline VARCHAR(100),
    productsale DECIMAL(10,2),
    productdescription TEXT,
    quantityinstock INT,
    buyprice DECIMAL(10,2),
    mspr DECIMAL(10,2)
);
INSERT INTO product (productcode, productname, productline, productsale, productdescription, quantityinstock, buyprice, mspr) 
VALUES 
('P001', 'Smartphone X1', 'Electronics', 50000.00, 'Latest smartphone with 5G support', 100, 35000.00, 55000.00),
('P002', 'Laptop Pro 15', 'Computers', 75000.00, 'High-performance laptop with 16GB RAM', 50, 60000.00, 80000.00),
('P003', 'Wireless Headphones', 'Accessories', 3000.00, 'Noise-cancelling over-ear headphones', 200, 2000.00, 3500.00),
('P004', 'Gaming Console Z', 'Gaming', 40000.00, 'Next-gen gaming console with 8K support', 75, 32000.00, 45000.00),
('P005', 'Smartwatch S3', 'Wearables', 12000.00, 'Fitness tracker with heart rate monitor', 150, 8000.00, 13000.00),
('P006', '4K LED TV', 'Home Appliances', 60000.00, 'Ultra HD Smart TV with HDR', 30, 45000.00, 65000.00),
('P007', 'Bluetooth Speaker', 'Audio', 5000.00, 'Portable speaker with deep bass', 120, 3500.00, 6000.00),
('P008', 'Mechanical Keyboard', 'Accessories', 7000.00, 'RGB backlit gaming keyboard', 90, 5000.00, 7500.00);

create table productlines (
productline varchar(100) primary key,
textdescription text,
htmldescription text,
image varchar(255));

INSERT INTO productlines (productline, textdescription, htmldescription, image) 
VALUES 
('Electronics', 'Devices like smartphones and tablets.', '<p>Latest electronic gadgets</p>', 'electronics.jpg'),
('Computers', 'Laptops, desktops, and accessories.', '<p>High-performance computing devices</p>', 'computers.jpg'),
('Accessories', 'Additional gadgets to enhance devices.', '<p>Essential accessories for your gadgets</p>', 'accessories.jpg'),
('Gaming', 'Gaming consoles and peripherals.', '<p>Next-gen gaming experience</p>', 'gaming.jpg'),
('Wearables', 'Smartwatches and fitness bands.', '<p>Track your fitness and stay connected</p>', 'wearables.jpg'),
('Home Appliances', 'TVs, refrigerators, and more.', '<p>Smart appliances for modern homes</p>', 'home_appliances.jpg'),
('Audio', 'Speakers, headphones, and soundbars.', '<p>Crystal-clear audio solutions</p>', 'audio.jpg');

select*from product;
select*from productlines;

select productcode, productname, textdescription
from product inner join productlines using (productline);

create table orders (
ordernumber int primary key,
orderdate date,
requireddate date,
shippeddate date,
status varchar(100),
comment varchar(100),
customernumber int);

INSERT INTO orders (ordernumber, orderdate, requireddate, shippeddate, status, comment, customernumber) 
VALUES 
(1001, '2025-03-01', '2025-03-05', '2025-03-04', 'Shipped', 'Delivered on time', 201),
(1002, '2025-03-02', '2025-03-06', '2025-03-05', 'Shipped', 'Package in transit', 202),
(1003, '2025-03-03', '2025-03-08', NULL, 'Pending', 'Awaiting stock', 203),
(1004, '2025-03-04', '2025-03-10', '2025-03-09', 'Shipped', 'Delayed due to weather', 204),
(1005, '2025-03-05', '2025-03-11', NULL, 'Processing', 'Order being packed', 205),
(1006, '2025-03-06', '2025-03-12', NULL, 'Cancelled', 'Customer requested cancellation', 206),
(1007, '2025-03-07', '2025-03-13', '2025-03-12', 'Shipped', 'Priority shipping applied', 207),
(1008, '2025-03-08', '2025-03-14', NULL, 'Processing', 'Pending payment confirmation', 208);

create order


