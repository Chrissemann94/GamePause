-- DATABASE CREATION
CREATE DATABASE WebShop;

-- TABLE CREATION
USE WebShop;

CREATE TABLE Customer (
ID int IDENTITY PRIMARY KEY,
Title varchar(255),
FirstName varchar(255),
LastName varchar(255) NOT NULL,
Email varchar(255),
Street varchar(255),
Zip varchar(255),
City varchar(255),
PwHash varchar(255),
Salt varchar(255)
);

CREATE TABLE Bestellung (
ID int IDENTITY PRIMARY KEY,
CustomerID int NOT NULL,
PriceTotal money,
DateOrdered datetime,
Street varchar(255),
Zip varchar(255),
City varchar(255),
FirstName varchar(255),
LastName varchar(255),
);

CREATE TABLE Category (
ID int IDENTITY PRIMARY KEY,
Name varchar(255),
TaxRate int
);

CREATE TABLE Manufacturer (
ID int IDENTITY PRIMARY KEY,
Name varchar(255),
FirstName varchar(255),
LastName varchar(255),
);

CREATE TABLE Product (
ID int IDENTITY PRIMARY KEY,
ProductName varchar(255),
NetUnitPrice money,
ImagePath varchar(255),
Description varchar(255),
ManufacturerID int,
CategoryID int
);

CREATE TABLE OrderLine(
ID int IDENTITY PRIMARY KEY,
OrderID int,
ProductID int,
Amount int,
NetUnitPrice money,
TaxRate int
);


-- ADDING FOREIGN KEYS
ALTER TABLE Bestellung
ADD CONSTRAINT FK_ID_CustomerID FOREIGN KEY (CustomerId)
REFERENCES Customer (Id);

ALTER TABLE OrderLine
ADD CONSTRAINT FK_ID_OrderID FOREIGN KEY (OrderID)
REFERENCES Bestellung (ID);

ALTER TABLE OrderLine
ADD CONSTRAINT FK_ID_ProductID FOREIGN KEY (ProductID)
REFERENCES Product (ID);

ALTER TABLE Product
ADD CONSTRAINT FK_ID_ManufacturerID FOREIGN KEY (ManufacturerID)
REFERENCES Manufacturer (ID);

ALTER TABLE Product
ADD CONSTRAINT FK_ID_CategoryID FOREIGN KEY (CategoryID)
REFERENCES Category (ID);
