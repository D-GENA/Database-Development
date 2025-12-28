# Mintafé Database Project – Supporting Documentation

Institution: Vocational Training Development Institute  
Course: CS217 Database Development
Database Name: Mintafe_Db  
Date: December 2025  

## Group Members
| Members | Role | User Name |
|---------|-----------|------|
| Georgia Black | John Brown | SQL Queries & Reports  |
| Shamari Blackwood | John Brown | Database Architect |
| Kavian Blades | John Brown | Documentation & Testing |
| Odane Brown | John Brown | Lead Developer  |
| Renaldo Frazer | John Brown | ERD & Normalization |
| Erwin Supre | John Brown | SQL Queries & Reports |

---

## A. Normalization
The database is normalized to Third Normal Form (3NF).

### First Normal Form (1NF)
- All attributes contain atomic values.
- No repeating groups exist.
| OrderID | CustomerName | Phone | TableNo | FoodItem | Price |
|---------|--------------|-------|---------|----------|-------|
| 1 | John Brown | 876-555-1111 | 5 | Burgur | 1200 |
| 1 | John Brown | 876-555-1111 | 5 | Soda | 300 |
Each row now contains one food item
But customer data still repeats


### Second Normal Form (2NF)
- All non-key attributes depend on the full primary key.
| CustomerID | CustomerName | Phone |
|------------|--------------|-------|
| 1 | John Brown | 876-555-1111 |

| OrderID | CustomerID | TableNo |
|---------|------------|---------|
| 1 | 1 | 5 |

| OrderItemID | OrderID | FoodItem | Price |
|-------------|---------|----------|-------|
| 1 | 1 | Burgur | 1200 |
| 2 | 1 | SOda | 300 |
Food price still depends on food name, not the order


### Third Normal Form (3NF)
- No transitive dependencies exist.
- Customer data is stored only in the Customers table and referenced elsewhere via foreign keys.

MenuItems Table
| MenuItemID | ItemName | Price |
|------------|----------|-------|
| 1 | Burgur | 1200 |
| 2 | Burgur | 300 |

OrderItems 
| OrderItemID | OrderID | MenuItemID |
|-------------|---------|------------|
| 1 | 1 | 1 |
| 2 | 1 | 2 |

---

## B. Data Dictionary

### Customers
| Field | Type | Description |
|------|------|-------------|
| CustomerID | INT (PK) | Unique customer identifier |
| FirstName | VARCHAR(50) | Customer first name |
| LastName | VARCHAR(50) | Customer last name |
| Phone | VARCHAR(20) | Contact number |
| Email | VARCHAR(100) | Email address |
| DietaryNotes | VARCHAR(255) | Allergies or preferences |
| DOB | DATE | Date of birth |
| LoyaltyPoints | INT | Reward points |

### DiningTables
| Field | Type | Description |
|------|------|-------------|
| TableID | INT (PK) | Dining table identifier |
| Capacity | INT | Seating capacity |
| Status | VARCHAR(20) | Table availability |

### MenuItems
| Field | Type | Description |
|------|------|-------------|
| MenuItemID | INT (PK) | Menu item identifier |
| Name | VARCHAR(100) | Item name |
| Category | VARCHAR(50) | Item category |
| Price | DECIMAL(10,2) | Item price |
| Description | VARCHAR(255) | Item description |

### Staff
| Field | Type | Description |
|------|------|-------------|
| StaffID | INT (PK) | Staff identifier |
| FullName | VARCHAR(100) | Staff name |
| Role | VARCHAR(50) | Job role |
| Username | VARCHAR(50) | Login username |
| PasswordHash | VARCHAR(255) | Encrypted password |

### Reservations
| Field | Type | Description |
|------|------|-------------|
| ReservationID | INT (PK) | Reservation identifier |
| CustomerID | INT (FK) | Customer |
| TableID | INT (FK) | Dining table |
| ReservationDate | DATE | Date |
| ReservationTime | TIME | Time |
| NoOfGuests | INT | Number of guests |
| Status | VARCHAR(20) | Reservation status |
| Notes | VARCHAR(255) | Special notes |

### Orders
| Field | Type | Description |
|------|------|-------------|
| OrderID | INT (PK) | Order identifier |
| CustomerID | INT (FK) | Customer |
| TableID | INT (FK) | Dining table |
| OrderTime | DATETIME | Time placed |
| Status | VARCHAR(20) | Order status |

### OrderItems
| Field | Type | Description |
|------|------|-------------|
| OrderItemID | INT (PK) | Order item ID |
| OrderID | INT (FK) | Order |
| MenuItemID | INT (FK) | Menu item |
| Quantity | INT | Quantity |
| SpecialRequest | VARCHAR(255) | Custom request |

---

## C. Business Rules and Assumptions
- Customers may place orders without reservations.
- A dining table may have multiple reservations on different dates.
- Each order must reference one dining table.
- Passwords are stored as hashed values.

---

## D. Security and Integrity
- Referential integrity enforced through foreign keys.
- Normalization reduces data redundancy.
- Secure credential storage.

---

## E. Conclusion
The Mintafé database system provides a scalable and reliable solution for managing restaurant operations. The design follows best practices in relational database development and reflects real-world business requirements.
