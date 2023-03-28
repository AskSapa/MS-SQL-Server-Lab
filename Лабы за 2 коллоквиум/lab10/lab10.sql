/*CREATE DATABASE productsdb;*/

USE productsdb;
/*CREATE TABLE Products
(
    Id INT IDENTITY PRIMARY KEY,
    ProductName NVARCHAR(30) NOT NULL,
    Manufacturer NVARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price MONEY NOT NULL
);
CREATE TABLE History 
(
    Id INT IDENTITY PRIMARY KEY,
    ProductId INT NOT NULL,
    Operation NVARCHAR(200) NOT NULL,
    CreateAt DATETIME NOT NULL DEFAULT GETDATE(),
);*/


/*GO
CREATE TRIGGER Products_INSERT
ON Products
AFTER INSERT
AS
INSERT INTO History (ProductId, Operation)
SELECT Id, 'Добавлен товар ' + ProductName + '   фирма ' + Manufacturer
FROM INSERTED;*/


/*INSERT INTO Products (ProductName, Manufacturer, ProductCount, Price)
VALUES('iPhone X', 'Apple', 2, 79900)

SELECT * FROM History*/


/*GO
CREATE TRIGGER Products_DELETE
ON Products
AFTER DELETE
AS
INSERT INTO History (ProductId, Operation)
SELECT Id, 'Удален товар ' + ProductName + '   фирма ' + Manufacturer
FROM DELETED*/


/*USE productsdb;
DELETE FROM Products
WHERE Id=1
 
SELECT * FROM History*/


/*GO
CREATE TRIGGER Products_UPDATE
ON Products
AFTER UPDATE
AS
INSERT INTO History(ProductId, Operation)
SELECT Id, 'Обновлен товар ' + ProductName + '   фирма ' + Manufacturer
FROM INSERTED*/


/*INSERT INTO Products (ProductName, Manufacturer, ProductCount, Price)
VALUES ('A7', 'Samsung', 3, 20000)*/

/*UPDATE Products SET Manufacturer = 'Samsu'
WHERE Manufacturer = 'Samsung'

SELECT * FROM History*/
