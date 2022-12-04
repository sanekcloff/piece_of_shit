

CREATE TABLE Users
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	[Login] VARCHAR(50) NOT NULL,
	[Password] VARCHAR(50) NOT NULL,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	MiddleName VARCHAR(20) NOT NULL,
	[Role] INT NOT NULL, 
)

CREATE TABLE Products
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	[Image] VARCHAR(MaX) NULL,
	Title VARCHAR(50) NOT NULL,
	[Description] NVARCHAR(max) NULL,
	[Version] NVARCHAR(max) NULL,
	Cost DECIMAL(10,2) NOT NULL,
)

CREATE TABLE Orders
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	ProductId INT REFERENCES Products(ID) NOT NULL,
	UserId INT REFERENCES [Users](ID) NOT NULL,
)


INSERT INTO [dbo].[Products]([Image],[Title],[Description],[Version],[Cost])VALUES
           ('picture_1.png','«1С:Бухгалтерия».','Решение 1C:Бухгалтерия 8 .','ПРОФ',13000),
		   ('picture_2.png','1С:Бухгалтерия 8','Программа 1С:Бухгалтерия 8 ред.3.0 разработана как юридических лиц.','КОРП',33600),
		   ('picture_3.png','1С:Бухгалтерия 8. Комплект на 5 пользователей','При покупке 1С:Бухгалтерия 8.Комплект на 5 пользователей Вы экономите по сравнению с покупкой отдельно 1С Бухгалтерия 8 ПРОФ.','ПРОФ',26000),
		   ('picture_4.png','1С:Бухгалтерия некоммерческой организации 8 ','Программа включает в себя платформу «1С:Предприятие 8.3» и конфигурацию «Бухгалтерия некоммерческой организации».','ПРОФ',14400)
GO





--DROP TABLE Orders
--DROP TABLE Products
--DROP TABLE Users