drop table hyperav_stockorderdetails;
drop table hyperav_orderdetails;
drop table hyperav_stock;
drop table hyperav_products;
drop table hyperav_supplier;
drop table hyperav_manufacturer;
drop table hyperav_orders;
drop table hyperav_staff;
drop table hyperav_location;
drop table hyperav_customer;



CREATE TABLE hyperav_customer (
customerID int(10) AUTO_INCREMENT,
cuFName varchar(25) NOT NULL,
cuLName varchar(50) NOT NULL,
cuAddress1 varchar(50) NOT NULL,
cuAddress2 varchar(50),
cuTown varchar(15) NOT NULL,
cuPostcode varchar(15) NOT NULL,
cuTelephone varchar(11) NOT NULL,
cuEmail varchar(50) NOT NULL,
cuPassword varchar(50) NOT NULL,
CONSTRAINT h_customerID_PK PRIMARY KEY (customerID),
CONSTRAINT h_cuEmail_UQ UNIQUE (cuEmail)
);

create table hyperav_location (
locationID int(10) AUTO_INCREMENT,
loName varchar(25) NOT NULL,
loAddress1 varchar(40) NOT NULL,
loAddress2 varchar(40),
loTown varchar(20) NOT NULL,
loPostcode varchar(15) NOT NULL,
loTelephone varchar(20) NOT NULL,
CONSTRAINT h_locationID_PK PRIMARY KEY (locationID),
CONSTRAINT h_loTelephone_UQ UNIQUE (loTelephone)
);

CREATE TABLE hyperav_staff (
staffID int(10) AUTO_INCREMENT,
stFName varchar(25) NOT NULL,
stLName varchar(50) NOT NULL,
stAddress1 varchar(50) NOT NULL,
stAddress2 varchar(50),
stTown varchar(15) NOT NULL,
stPostcode varchar(15) NOT NULL,
stTelephone varchar(20) NOT NULL,
stEmail varchar(50) NOT NULL,
stPassword varchar(50) NOT NULL,
stJobRole varchar(50) NOT NULL,
locationID int(10),
CONSTRAINT h_staffID_PK PRIMARY KEY (staffID),
CONSTRAINT h_loID_FK FOREIGN KEY (locationID) REFERENCES hyperav_location(locationID)
);

CREATE TABLE hyperav_orders (
orderID int(10) AUTO_INCREMENT,
orDate Date NOT NULL,
orTotal decimal(10,2) NOT NULL,
orDeliverDate DATE NOT NULL,
orPaymentMethod varchar(15) NOT NULL,
customerID int(10),
staffID int(10),
CONSTRAINT h_orderID_PK PRIMARY KEY (orderID),
CONSTRAINT h_customerID_FK FOREIGN KEY (customerID) REFERENCES hyperav_customer(customerID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT h_staffID_FK FOREIGN KEY (staffID) REFERENCES hyperav_staff(staffID)ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT h_orDelDt_GTE_orDt CHECK (orDeliverDate >= orDate),
CONSTRAINT h_orDate_Today CHECK (orDate = DATE(orDate))
);

create table hyperav_manufacturer (
manufacturerID int(10) AUTO_INCREMENT,
maName varchar(25) NOT NULL,
maAddress1 varchar(40) NOT NULL,
maAddress2 varchar(40),
maTown varchar(20) NOT NULL,
maPostcode varchar(15) NOT NULL,
maTelephone varchar(20) NOT NULL,
maEmail varchar(50),
CONSTRAINT h_manufacturerID_PK PRIMARY KEY (manufacturerID),
CONSTRAINT h_maTelephone_UQ UNIQUE (maTelephone)
);

create table hyperav_supplier (
supplierID INT(10) NOT NULL AUTO_INCREMENT,
suName varchar(25) NOT NULL,
suAddress1 varchar(40) NOT NULL,
suAddress2 varchar(40) NOT NULL,
suTown varchar(20) NOT NULL,
suPostcode varchar(15) NOT NULL,
suTelephone varchar(20) NOT NULL,
suEmail varchar(50),
CONSTRAINT h_supplierID_PK PRIMARY KEY (supplierID),
CONSTRAINT h_suTelephone_UQ UNIQUE (suTelephone)
);

CREATE TABLE hyperav_products (
prModelNo VARCHAR(15) NOT NULL,
prName VARCHAR(25) NOT NULL,
prDescription VARCHAR(100) NOT NULL,
prPrice DECIMAL(6,2) NOT NULL,
prCategory VARCHAR(30) NOT NULL,
manufacturerID INT(10) NOT NULL,
minStockLevel INT(6) NOT NULL,
maxStockLevel INT(6),
CONSTRAINT h_prModelNo_PK PRIMARY KEY (prModelNo),
CONSTRAINT h_prModelNo_UQ UNIQUE (prModelNo)
);

CREATE TABLE hyperav_stock (
stockID INT(10) AUTO_INCREMENT,
prModelNo VARCHAR(15) NOT NULL,
locationID INT(10) NOT NULL,
stQuantity INT(7) NOT NULL,
CONSTRAINT h_stockID_PK PRIMARY KEY (stockID),
CONSTRAINT h_prModelNo_FK FOREIGN KEY (prModelNo) REFERENCES hyperav_products (prModelNo)ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT h_locationID_FK FOREIGN KEY (locationID) REFERENCES hyperav_location (locationID)ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE hyperav_orderdetails (
orderID INT(10) NOT NULL,
stockID INT(10) NOT NULL,
odQuantity INT(3) NOT NULL,
CONSTRAINT h_orderID_FK FOREIGN KEY (orderID) REFERENCES hyperav_orders (orderID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT h_stockID_FK FOREIGN KEY (stockID) REFERENCES hyperav_stock (stockID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT h_odQuantGTZero CHECK (odQuantity > 0),
CONSTRAINT h_oIDsID_PK PRIMARY KEY (orderID, stockID)
);

CREATE TABLE hyperav_stockorderdetails
(stockID int(10) NOT NULL,
supplierID INT(10) NOT NULL,
stOrderDate Date NOT NULL,
stDeliveryDate Date,
stOrderQuantity INT(3) NOT NULL,
CONSTRAINT h_stOrdDate_sysdate CHECK (stOrderDate = DATE(stOrderDate)),
CONSTRAINT h_storderQuantGrTZero CHECK (stOrderQuantity > 0),
CONSTRAINT h_stOrderID_FK FOREIGN KEY (stockID) REFERENCES hyperav_stock(stockID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT h_stOderserSupID_FK FOREIGN KEY(supplierID) REFERENCES hyperav_supplier(supplierID)ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT h_stockOrderDetails_PK PRIMARY KEY (stockID,supplierID,stOrderDate)
);
