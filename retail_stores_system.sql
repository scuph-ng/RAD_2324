CREATE DATABASE retail_store_system;

CREATE TABLE Store(
  storeID       INT PRIMARY KEY,
  storeName     VARCHAR(100),
  storeAddress  VARCHAR(200),
);

CREATE TABLE Admin(
  adminID     INT PRIMARY KEY,
  adminName   VARCHAR(100),
  contact     VARCHAR(20),
  email       VARCHAR(100),
  passwd      VARCHAR(100),
  storeID     INT,
  FOREIGN KEY (storeID) REFERENCES Store(storeID)
);

CREATE TABLE Staff(
  staffID     INT PRIMARY KEY,
  staffName   VARCHAR(100),
  contact     VARCHAR(20),
  email       VARCHAR(100),
  passwd      VARCHAR(100),
  adminID     INT,
  FOREIGN KEY (adminID) REFERENCES Admin(adminID)
);

CREATE TABLE Product(
  productID     INT PRIMARY KEY;
  productName   VARCHAR(100),
  importPrice   FLOAT,
  retailPrice   FLOAT,
  creationDate  DATE,
  category      VARCHAR(200),
  barcode       BIT(32),
);

CREATE TABLE Inventory(
  productID     INT,
  storeID       INT,
  quantity      INT,
  PRIMARY KEY (productID, storeID),
  FOREIGN KEY (productID) REFERENCES Product(productID),
  FOREIGN KEY (storeID) REFERENCES Store(storeID)
);

CREATE TABLE Customer(
  customerID    INT,
  customerName  VARCHAR(100),
  contact       VARCHAR(20),
  email         VARCHAR(100),
  address       VARCHAR(200),
);

CREATE TABLE Transaction(
  transactionID   INT PRIMARY KEY,
  staffID         INT,
  customerID      INT,
  total           FLOAT,
  FOREIGN KEY (staffID) REFERENCES Staff(staffID),
  FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

CREATE TABLE Report(
  reportID        INT PRIMARY KEY,
  revenue         FLOAT,
  creationDate    DATE
);