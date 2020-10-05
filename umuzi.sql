CREATE DATABASE Umuzi;

CREATE TABLE Customers(
	CustomerID int,
	FirstName varchar(50),
	LastName varchar(50),
	Gender varchar,
	Address varchar(200),
	Phone int,
	Email varchar(100),
	City varchar(20),
	Country varchar(50),
	PRIMARY KEY (CustomerID)
);

CREATE TABLE Employees(
	EmployeeID int,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(100),
	JobTitle varchar(20),
	PRIMARY KEY (EmployeeID)	  
);
CREATE TABLE Payments(
	CustomerID int,
	PaymentID int,
	PaymentDate date,
	Amount decimal(5,2),
	PRIMARY KEY(PaymentID),
	FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)	
);
CREATE TABLE Products(
	ProductId int,
	ProductName varchar(100),
	Description varchar(300),
	BuyPrice decimal(5,2),
	PRIMARY KEY(ProductId)
);
CREATE TABLE Orders (
    OrderID int,
    ProductID int,
    PaymentID int,
    FulfilledByEmployeeID int,
    DateRequired date,
    DateShipped date,
    Status varchar(20),
	PRIMARY KEY(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY(PaymentID) REFERENCES Payments(PaymentID),
    FOREIGN KEY(FulfilledByEmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Customers(CustomerID,FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(1,'John','Hibert','Male','284 chaucer st',084789657,'john@gmail.com','Johannesburg','South Africa');
INSERT INTO Customers(CustomerID,FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(2,'Thando','Sithole','Female','240 Sect 1',0794445584,'thando@gmail.com','Cape Town','South Africa');
INSERT INTO Customers(CustomerID,FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(3,'Leon','Glen','Male','81 Everton Rd,Gillits',0820832830,'Leon@gmail.com','Durban','South Africa');
INSERT INTO Customers(CustomerID,FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(4,'Charl','Muller','Male','290A Dorset Ecke',856872553,'Charl.muller@yahoo.com','Berlin','Germany');
INSERT INTO Customers(CustomerID,FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(5,'Julia','Stein','Female','2 Wernerring',672445058,'Js234@yahoo.com','Frankfurt','Germany');

INSERT INTO Employees(EmployeeID,FirstName,LastName,Email,JobTitle)
VALUES(1,'Kani','Matthew','mat@gmail.com','Manager');
INSERT INTO Employees(EmployeeID,FirstName,LastName,Email,JobTitle)
VALUES(2,'Lesly','Cronje','LesC@gmail.com','Clerk');
INSERT INTO Employees(EmployeeID,FirstName,LastName,Email,JobTitle)
VALUES(3,'Gideon','Maduku','m@gmail.com','Accountant');

INSERT INTO Payments(CustomerID,PaymentID,PaymentDate,Amount)
VALUES(1,1,'01-09-2018',150.75);
INSERT INTO Payments(CustomerID,PaymentID,PaymentDate,Amount)
VALUES(5,2,'03-09-2018',150.75);
INSERT INTO Payments(CustomerID,PaymentID,PaymentDate,Amount)
VALUES(4,3,'03-09-2018',700.60);

INSERT INTO Products(ProductId,ProductName,Description,BuyPrice)
VALUES(1,'Harley Davidson Chopper','This replica features working kickstand, front suspension, gear-shift lever',150.75);
INSERT INTO Products(ProductId,ProductName,Description,BuyPrice)
VALUES(2,'Classic Car','Turnable front wheels, steering function',550.75);
INSERT INTO Products(ProductId,ProductName,Description,BuyPrice)
VALUES(3,'Sports car','Turnable front wheels, steering function',700.60);

INSERT INTO Orders(OrderId,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired,DateShipped,Status)
VALUES(1,1,1,2,'05-09-2018',NULL,'Not shipped');
INSERT INTO Orders(OrderId,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired,DateShipped,Status)
VALUES(2,1,2,2,'04-09-2018','03-09-2018','Shipped');
INSERT INTO Orders(OrderId,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired,DateShipped,Status)
VALUES(3,3,3,3,'06-09-2018',NULL,'Not shipped');