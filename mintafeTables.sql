USE [Mintafe_Db];

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
insert into Customers (FirstName, LastName, Phone, Email, DietaryNotes, DOB, LoyaltyPoints) values
('Dave', 'Bautista', '836-555-0199', 'dbautista@mintafe.com', 'None', '1985-07-15', 0),
('Emma', 'Stone', '836-555-0123', 'estone@mintafe.com', 'Vegetarian', '1990-03-22', 0),
('Liam', 'Neeson', '836-555-0456', 'lneeson@mintafe.com', 'None', '1960-06-10', 0),
('Erika', 'Badu', '836-555-0789', 'ebadu@mintafe.com', 'None', '1988-11-05', 0),
('Christopher', 'Evans', '836-555-0345', 'chrisevans@mintafe.com', 'Gluten-Free','1981-06-13', 0),
('Natalie', 'Portman', '836-555-0678', 'nportman@mintafe.com', 'None', '1990-07-15', 0), 
('Michael', 'B. Jordan', '836-555-0912', 'mbjordan@mintafe.com', 'None', '1987-09-19', 0), 
('Scarlett', 'Johansson', '836-555-0234', 'sjohansson@mintafe.com', 'None', '1984-11-22', 0), 
('Robert', 'Downey Jr.', '836-555-0567', 'rdowneyjr@mintafe.com', 'None', '1965-04-04', 0), 
('Gal', 'Gadot', '836-555-0890', 'ggadot@mintafe.com', 'None', '1987-04-30', 0), 
('Chris', 'Hemsworth', '836-555-0124', 'chemsworth@mintafe.com', 'None', '1983-08-11', 0), 
('Jennifer', 'Lawrence', '836-555-0457', 'jlawrence@mintafe.com', 'None', '1990-08-15', 0), 
('Tom', 'Holland', '836-555-0780', 'tholland@mintafe.com', 'None', '1996-06-13', 0),    
('Zendaya', 'Coleman', '836-555-0346', 'zcoleman@mintafe.com', 'None', '1996-07-20', 0), 
('Brie', 'Larson', '836-555-0679', 'blarson@mintafe.com', 'None', '1990-07-20', 0), 
('Paul', 'Rudd', '836-555-0913', 'prudd@mintafe.com', 'None', '1970-08-06', 0), 
('Evangeline', 'Lilly', '836-555-0235', 'elilly@mintafe.com', 'None', '1985-04-12', 0), 
('Mark', 'Ruffalo', '836-555-0568', 'mruffalo@mintafe.com', 'None', '1968-11-22', 0), 
('Chris', 'Pratt', '836-555-0891', 'cpratt@mintafe.com', 'None', '1983-06-10', 0), 
('Zoe', 'Saldana', '836-555-0125', 'zsaldana@mintafe.com', 'None', '1988-06-20', 0), 
('Benedict', 'Cumberbatch', '836-555-0458', 'bcumberbatch@mintafe.com', 'None', '1976-07-27', 0), 
('Elizabeth', 'Olsen', '836-555-0781', 'elizabetholsen@mintafe.com', 'None', '1987-07-20', 0), 
('Anthony', 'Mackie', '836-555-0347', 'amackie@mintafe.com', 'None', '1978-09-21', 0),
('Sebastian', 'Stan', '836-555-0680', 'sstan@mintafe.com', 'None', '1982-07-14', 0),
('Letitia', 'Wright', '836-555-0914', 'lwright@mintafe.com', 'None', '1990-07-20', 0),
('Danai', 'Gurira', '836-555-0236', 'dgurira@mintafe.com', 'None', '1985-04-12', 0),
('Winston', 'Duke', '836-555-0569', 'wduke@mintafe.com', 'None', '1985-04-12', 0),
('Pom', 'Klementieff', '836-555-0892', 'pklementieff@mintafe.com', 'None', '1990-04-12', 0),
('Idris', 'Elba', '836-555-0126', 'ielba@mintafe.com', 'None', '1972-06-01', 0),
('Tessa', 'Thompson', '836-555-0459', 'tessa@mintafe.com', 'None', '1989-04-12', 0),
('Chadwick', 'Boseman', '836-555-0782', 'cboseman@mintafe.com', 'None', '1976-04-12', 0),
('Michael', 'Douglas', '836-555-0348', 'mdouglas@mintafe.com', 'None', '1944-02-18', 0),
('Michelle', 'Pfeiffer', '836-555-0681', 'mpfeiffer@mintafe.com', 'None', '1969-04-27', 0),
('Kumail', 'Nanjiani', '836-555-0915', 'knanjiani@mintafe.com', 'None', '1985-04-12', 0),
('Lupita', 'Nyong''o', '836-555-0237', 'lnyongo@mintafe.com', 'None', '1983-03-03', 0),
('Danielle', 'Gurira', '836-555-0570', 'dgurira@mintafe.com', 'None', '1985-04-12', 0),
('John', 'Boyega', '836-555-0893', 'jboyega@mintafe.com', 'None', '1992-01-15', 0),
('Sophie', 'Turner', '836-555-0127', 'sophieturner@mintafe.com', 'None', '1994-07-20', 0),
('Maisie', 'Williams', '836-555-0460', 'mwilliams@mintafe.com', 'None', '1997-05-15', 0),
('Natalia', 'Dyer', '836-555-0783', 'ndyer@mintafe.com', 'None', '1990-07-20', 0),
('Charlie', 'Heaton', '836-555-0349', 'cheaton@mintafe.com', 'None', '1991-04-12', 0),
('Trevoir', 'Williams', '836-555-0682', 'twilliams@mintafe.com', 'None', '1990-07-20', 0);


CREATE TABLE DiningTables (
    TableID INT IDENTITY(1,1) PRIMARY KEY,
    Capacity INT,
    Status VARCHAR(20)
);
insert into DiningTables (Capacity, Status) values
(2, 'Available'),
(4, 'Available'),
(6, 'Available'),
(8, 'Available'),
(10, 'Available'),
(2, 'Available'),
(4, 'Available'),
(6, 'Available'),
(8, 'Available'),
(10, 'Available');

CREATE TABLE MenuItems (
    MenuItemID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Description VARCHAR(255)
);
insert into MenuItems (Name, Category, Price, Description) values
('Margherita Pizza', 'Main Course', 12.99, 'Classic pizza with tomato sauce, mozzarella, and fresh basil'),
('Caesar Salad', 'Appetizer', 8.99, 'Crisp romaine lettuce with Caesar dressing, croutons, and Parmesan cheese'),
('Spaghetti Carbonara', 'Main Course', 14.99, 'Pasta with eggs, cheese, pancetta, and pepper'),
('Tiramisu', 'Dessert', 6.99, 'Coffee-flavored Italian dessert with layers of ladyfingers and mascarpone cheese'),
('Minestrone Soup', 'Appetizer', 7.99, 'Hearty vegetable soup with beans and pasta'),
('Grilled Salmon', 'Main Course', 18.99, 'Fresh salmon fillet grilled to perfection with lemon butter sauce'),
('Chocolate Lava Cake', 'Dessert', 7.49, 'Warm chocolate cake with a gooey molten center served with vanilla ice cream'),
('Bruschetta', 'Appetizer', 6.49, 'Grilled bread topped with fresh tomatoes, garlic, basil, and olive oil'),
('Fettuccine Alfredo', 'Main Course', 13.99, 'Pasta in a creamy Alfredo sauce with Parmesan cheese'),
('Panna Cotta', 'Dessert', 5.99, 'Creamy Italian dessert topped with fresh berries'),
('Caprese Salad', 'Appetizer', 9.49, 'Fresh mozzarella, tomatoes, and basil drizzled with balsamic glaze'),
('Lasagna', 'Main Course', 15.99, 'Layers of pasta, meat sauce, ricotta, and mozzarella cheese baked to perfection'),
('Gelato', 'Dessert', 4.99, 'Italian-style ice cream available in various flavors'),
('Antipasto Platter', 'Appetizer', 11.99, 'Selection of cured meats, cheeses, olives, and marinated vegetables'),
('Chicken Parmesan', 'Main Course', 16.49, 'Breaded chicken breast topped with marinara sauce and melted cheese'),
('Cannoli', 'Dessert', 6.49, 'Crispy pastry shells filled with sweet ricotta cheese and chocolate chips'), 
('Stuffed Mushrooms', 'Appetizer', 7.49, 'Mushroom caps filled with a savory mixture of cheese and herbs'),
('Eggplant Parmesan', 'Main Course', 14.49, 'Breaded eggplant slices layered with marinara sauce and cheese'),
('Affogato', 'Dessert', 5.49, 'Vanilla gelato topped with a shot of hot espresso'),
('Garlic Bread', 'Appetizer', 4.99, 'Toasted bread with garlic butter and herbs'), 
('Ravioli', 'Main Course', 13.49, 'Pasta pockets filled with cheese or meat, served with marinara sauce'),
('Cheesecake', 'Dessert', 6.99, 'Creamy cheesecake with a graham cracker crust and fruit topping'), 
('Calamari', 'Appetizer', 8.49, 'Fried squid rings served with marinara sauce'),
('Seafood Risotto', 'Main Course', 17.99, 'Creamy risotto with a mix of fresh seafood and herbs'),
('Sorbet', 'Dessert', 4.49, 'Refreshing fruit sorbet available in various flavors'), 
('Stuffed Bell Peppers', 'Appetizer', 7.99, 'Bell peppers filled with a savory mixture of rice and vegetables'),
('Veal Marsala', 'Main Course', 19.49, 'Tender veal cutlets cooked in a rich Marsala wine sauce'),
('Chocolate Mousse', 'Dessert', 6.49, 'Light and airy chocolate dessert topped with whipped cream'), 
('Fried Mozzarella Sticks', 'Appetizer', 6.99, 'Breaded and fried mozzarella cheese sticks served with marinara sauce'),
('Chicken Alfredo', 'Main Course', 15.49, 'Grilled chicken breast served over fettuccine pasta in Alfredo sauce'),
('Lemon Sorbet', 'Dessert', 4.99, 'Tangy lemon-flavored sorbet to cleanse the palate'), 
('Prosciutto and Melon', 'Appetizer', 9.99, 'Thinly sliced prosciutto served with fresh melon slices'),
('Baked Ziti', 'Main Course', 14.99, 'Pasta baked with marinara sauce, ricotta, and mozzarella cheese'),
('Italian Cream Cake', 'Dessert', 7.49, 'Moist cake layered with cream cheese frosting and coconut flakes'), 
('Caprese Skewers', 'Appetizer', 8.49, 'Skewers of cherry tomatoes, fresh mozzarella, and basil drizzled with balsamic glaze'),
('Shrimp Scampi', 'Main Course', 18.49, 'Sautéed shrimp in a garlic butter and white wine sauce served over pasta'),
('Zeppole', 'Dessert', 5.99, 'Fried dough balls dusted with powdered sugar and served with chocolate sauce'), 
('Antipasto Salad', 'Appetizer', 10.49, 'Mixed greens topped with cured meats, cheeses, olives, and Italian dressing'),
('Gnocchi', 'Main Course', 13.99, 'Soft potato dumplings served with marinara or pesto sauce'),
('Tartufo', 'Dessert', 6.99, 'Chocolate and hazelnut gelato ball coated in cocoa powder and nuts'), 
('Focaccia Bread', 'Appetizer', 5.49, 'Italian flatbread topped with olive oil, herbs, and sea salt'), 
('Chicken Piccata', 'Main Course', 16.99, 'Sautéed chicken breast in a lemon caper sauce served with pasta'),
('Ricotta Cheesecake', 'Dessert', 7.49, 'Light and fluffy cheesecake made with ricotta cheese');

CREATE TABLE Staff (
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100),
    Role VARCHAR(50),
    Username VARCHAR(50),
    PasswordHash VARCHAR(255)
);
insert into Staff (FullName, Role, Username, PasswordHash) values
('Odane Brown', 'DatabaseAdmin', 'ndezness', 'hashed_password_1'),
('Georgia Black', 'DatabaseAdmin', 'geegee', 'hashed_password_2'),
('Shamari Blackwood', 'DatabaseAdmin', 'theeShamari', 'hashed_password_3'),
('Kavian Blades', 'DatabaseAdmin', 'D-GENA', 'hashed_password_4'),
('Renaldo Frazer', 'DatabaseAdmin', 'renfra', 'hashed_password_5'),
('Edwin Supré', 'DatabaseAdmin', 'edsupre', 'hashed_password_6'), 
('Aaliyah Thompson', 'Head Chef', 'aaliyahT', 'hashed_password_7'),
('Jamal Washington', 'Sous Chef', 'jamalW', 'hashed_password_8'),
('Imani Brooks', 'Chef', 'imaniB', 'hashed_password_9'),
('Malik Carter', 'Chef', 'malikC', 'hashed_password_10'),
('Zara Mitchell', 'Pastry Chef', 'zaraM', 'hashed_password_11'),
('Dante Reed', 'Line Cook', 'danteR', 'hashed_password_12'),
('Sanaa Hayes', 'Line Cook', 'sanaaH', 'hashed_password_13'),
('Rashad Simmons', 'Waitstaff', 'rashadS', 'hashed_password_14'),
('Jada Foster', 'Waitstaff', 'jadaF', 'hashed_password_15'),
('Tyrell Morgan', 'Host/Hostess', 'tyrellM', 'hashed_password_16'),
('Nia Powell', 'Host/Hostess', 'niaP', 'hashed_password_17'),
('Elijah Gray', 'Busser', 'elijahG', 'hashed_password_18'),
('Ava Jenkins', 'Busser', 'avaJ', 'hashed_password_19'),
('Cameron Perry', 'Manager', 'cameronP', 'hashed_password_20'),
('Madison Kelly', 'Manager', 'madisonK', 'hashed_password_21'),
('Jordan Sanders', 'Cleaner', 'jordanS', 'hashed_password_22'),
('Sophia Barnes', 'Cleaner', 'sophiaB', 'hashed_password_23'),
('Lucas Ross', 'Security', 'lucasR', 'hashed_password_24'),
('Isabella Henderson', 'Security', 'isabellaH', 'hashed_password_25'),
('Ethan Coleman', 'Bartender', 'ethanC', 'hashed_password_26'),
('Mia Long', 'Bartender', 'miaL', 'hashed_password_27');

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

