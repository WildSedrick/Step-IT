--CREATE DATABASE Market;
--GO
USE Market;


--CREATE TABLE Electronics
--(
--	Id int PRIMARY KEY IDENTITY NOT NULL,
--	Name nvarchar(30) NOT NULL CHECK(Name != ''),
--	Price money NOT NULL,
--	Amount int NOT NULL DEFAULT 0
--);
--INSERT INTO Electronics VALUES
--('�������', 100, 50),
--('�������������', 125, 100),
--('�����������', 315, 15),
--('����������� ������', 200, 50),
--('�������������', 20, 16),
--('������', 90, 32),
--('������', 65, 35),
--('���������', 250, 45),
--('����������', 126, 58),
--('�����������', 150, 25),
--('��������', 175, 10)

--CREATE TABLE BonusCard
--(
--	Id int PRIMARY KEY IDENTITY NOT NULL,
--	Number int NOT NULL UNIQUE,
--	BonusQuant int NOT NULL DEFAULT 0
--);

--INSERT INTO BonusCard VALUES
--(123, 100),
--(516, 50),
--(453, 500),
--(543, 125),
--(638, 0),
--(547, 95),
--(457, 1000),
--(438, 645),
--(345, 145),
--(286, 265)

--CREATE TABLE Customers
--(
--	Id int PRIMARY KEY IDENTITY NOT NULL,
--	Name nvarchar(30) NOT NULL CHECK(Name != ''),
--	Surname nvarchar(30) NOT NULL CHECK(Surname != ''),
--	BonusCardId int,
--	FOREIGN KEY(BonusCardId) REFERENCES BonusCard(Id)
--);
--INSERT INTO Customers VALUES
--('John', 'Silverhand', 1),
--('Victor', 'Cramk', 2),
--('Andrey', 'Rublev', 3),
--('Ivan', 'Bunin', 4),
--('Alex', 'Peshkin', 5),
--('Emanuil', 'Kant', 6),
--('Victor', 'Pelevin', 7),
--('Yuriy', 'Hoy', 8),
--('Kim', 'Kongung', 9),
--('Jey', 'Vasnetsov', 10)

--CREATE TABLE Products
--(
--	Id int PRIMARY KEY IDENTITY NOT NULL,
--	Name nvarchar(30) NOT NULL CHECK(Name != ''),
--	Price money NOT NULL,
--	Amount int NOT NULL DEFAULT 0
--);
--INSERT INTO Products VALUES
--('������', 5, 20),
--('��������', 10, 5),
--('���', 15, 30),
--('��������', 20, 50),
--('�����', 25, 35),
--('����', 30, 40),
--('��������', 4, 16),
--('���������', 56, 23),
--('��������', 92, 12),
--('���������', 30, 6),
--('������', 45, 96),
--('�������', 12, 125),
--('����', 3, 13),
--('����', 56, 28),
--('������', 31, 96),
--('�������', 96, 56),
--('����', 45, 34),
--('���', 125, 75),
--('�����', 34, 80),
--('�����', 46, 60)

--CREATE TABLE OrderDetailsProducts
--(
--	Id int PRIMARY KEY IDENTITY NOT NULL,
--	ProductId int NOT NULL,
--	FOREIGN KEY (ProductId) REFERENCES Products(Id)
--)

--INSERT INTO OrderDetailsProducts VALUES
--(1 , 1),
--(2 , 2),
--(3 , DEFAULT),
--(4 , 3),
--(DEFAULT, 4),
--(6 , 5),
--(7 , DEFAULT),
--(8 , 6),
--(9 , DEFAULT),
--(10 , 7),
--(11, 8),
--(DEFAULT, 2),
--(12, 9),
--(14, 10),
--(DEFAULT, 3),
--(15, DEFAULT),
--(16, 11),
--(DEFAULT, 8),
--(17, 6),
--(DEFAULT, 7),
--(18, 4),
--(19, 5),
--(20, 9),
--(5 , DEFAULT),
--(8, 10),
--(9 , 11),
--(DEFAULT, 4),
--(15 , 7)
--(6, DEFAULT),
--(13 , 4)


--CREATE TABLE OrderDetails
--(
--	Id int PRIMARY KEY IDENTITY NOT NULL,
--	Number int NOT NULL UNIQUE,
--	CustomerId int NOT NULL,
--	FOREIGN KEY(CustomerId) REFERENCES Customers(Id),
--	OrderProductId int NOT NULL,
--	FOREIGN KEY (OrderProductId) REFERENCES OrderDetailsProducts(Id)
--);
--INSERT INTO OrderDetails VALUES
--(456123, 1, 14,'25-06-2024'),
--(783634, 2, 28,'15-07-2024'),
--(347833, 3, 29,'06-06-2024'),
--(378345, 4, 30,'17-07-2024'),
--(876434, 6, 31,'30-06-2024'),
--(973787, 7, 32,'26-07-2024'),
--(345678, 8, 33,'29-06-2024'),
--(345667, 9, 34,'30-07-2024'),
--(689764, 10, 35,'05-06-2024'),
--(673445, 2, 36,'15-07-2024'),
--(698783, 7, 37,'08-06-2024'),
--(876341, 1, 38,'10-07-2024'),
--(467867, 2, 39,'16-06-2024'),
--(687345, 3, 45,'26-07-2024'),
--(345383, 4, 46,'23-06-2024'),
--(139374, 6, 47,'20-07-2024'),
--(679835, 7, 48,'21-06-2024')

--CREATE TABLE Orders
--(
--	Id int PRIMARY KEY IDENTITY NOT NULL,
--	OrderId int NOT NULL,
--	FOREIGN KEY (OrderId) REFERENCES OrderDetails(Id)
--);
--INSERT INTO Orders VALUES
--(1),
--(2),
--(3),
--(4),
--(5),
--(6),
--(7),
--(8),
--(9),
--(10),
--(11),
--(12),
--(13),
--(14),
--(15),
--(17),
--(16)