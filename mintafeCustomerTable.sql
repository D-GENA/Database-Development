USE [Mintafe_Db];

CREATE TABLE Customers(
customerId INT PRIMARY KEY IDENTITY(1,1),
firstName NVARCHAR(50) NOT NULL,
lastName NVARCHAR(50) NOT NULL,
phone INT NOT NULL,
email NVARCHAR(50) NOT NULL,
dietaryNotes VARCHAR(500) NOT NULL,
loyaltyPoints INT NOT NULL
)
