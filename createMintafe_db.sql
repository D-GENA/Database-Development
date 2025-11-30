CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    DietaryNotes VARCHAR(255),
    DOB DATE,
    LoyaltyPoints INT DEFAULT 0
);

CREATE TABLE DiningTables (
    TableID INT IDENTITY(1,1) PRIMARY KEY,
    Capacity INT,
    Status VARCHAR(20)
);

CREATE TABLE MenuItems (
    MenuItemID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Description VARCHAR(255)
);

CREATE TABLE Staff (
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100),
    Role VARCHAR(50),
    Username VARCHAR(50),
    PasswordHash VARCHAR(255)
);

CREATE TABLE Reservations (
    ReservationID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    TableID INT,
    ReservationDate DATE,
    ReservationTime TIME,
    NoOfGuests INT,
    Status VARCHAR(20),
    Notes VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TableID) REFERENCES DiningTables(TableID)
);

CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NULL,
    TableID INT,
    OrderTime DATETIME,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TableID) REFERENCES DiningTables(TableID)
);

CREATE TABLE OrderItems (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    MenuItemID INT,
    Quantity INT,
    SpecialRequest VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID)
);

/*
CREATE TABLE AuditLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    StaffID INT,
    Action VARCHAR(255),
    Timestamp DATETIME,
    TableAffected VARCHAR(50),
    RecordID INT,
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

*/
