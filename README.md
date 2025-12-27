Mintafe_Db Project Documentation
Database Development CS217
Trevoir Williams
Members: Georgia Black, Shamari Blackwood, Renaldo Frazer, Odane Brown, Kavian Blades, Edwin Supré
Vocational Training Development Institute
December 9, 2025
 
## How to Use
1. Run `create_tables.sql` to create the database schema.
2. Run `insert_data.sql` to populate sample data.
3. Use the queries in `queries.sql` to retrieve and analyze data.

## Contributors
- Georgia Black
- Shamari Blackwood - theeShamari
- Renaldo Frazer
- Odane Brown - ndezness
- Kavian Blades - D-GENA
- Edwin Supré

Introduction
Description of the company: Mintafé is a dining and takeout restaurant specializing in local cuisine with international adaptation. Under employ is roughly 50 staff and they manage a building of 900 sq ft.
The purpose of this database project is to support a restaurant business in the capacity of providing a more robust way to accept orders, document information provided by customers and staff, provide structure, reliability and centralized management. This is done through identifying special reservations, table assignments, menu orders, and service transactions. The database is designed to store, relate and organize critical business data that supports efficient daily activities while minimizing errors like incorrect orders, double bookings and inconsistent record keeping.
The problem this solves: Challenges such as double-booking, long wait times, misplaced orders and inefficient manual record keeping. These reduce customer satisfaction and increases operational stress for staff. Without a unified system reservations stand a chance of getting overlapped or customer preferences could end up lost between the reservation and the dining phases. Our database system addresses these concerns by creating an integrated platform that manages reservations, menu ordering and customer information efficiently and accurately.
By implementing a relational database, Mintafé can ensure that customer information, reservation details, and order data are accurately linked and easily accessible to staff across different service areas. This system enables seamless coordination between front-of-house and kitchen operations, improves order accuracy, and supports timely service delivery. Additionally, the database allows management to generate reports on sales performance, customer activity, and table utilization, providing valuable insights to support informed decision-making and future business growth.

Objectives
Manage restaurant reservations efficiently
Link customer orders with menu items and tables
Reduce data redundancy and improve accuracy
Support reporting analysis
 
Project Scope

This database will include reservations, orders, customers, menu items.
It will not include in this iteration online payments transactions, order delivery tracking, staff payroll.
The timeline from conceptualization to creation of this database should be one (1) month. This incorporates planning, requirement analysis, design and development.
The timeline from creation to deployment should be two (2) months. This incorporates fully building out the database, testing and deployment.
Maintenance will be ongoing after the third (3rd) month.

Team Dynamics
Team meetings will be conducted twice (2) per week for 4 hours where the team will go over ongoing project details in together to conceptualize the end goal as a team and ensure harmony throughout each phase. Inbetween this, individuals will work on their designated project tasks and share any updates during the weekly meetings. The team will be using Microsoft SQL Server Express and collaborating through a shared server by means of Azure Data Studio, Visual Studio Code, SQL Server Management Studio, Docker Desktop, GitHub Desktop and Navicat Premium Lite. The final development environment will be managed through GitHub. 
Design Overview

Database schema, tables, relationships and relevant diagrams
  
How the database is structured.
Explanation of relationships between customers, reservations, orders, menu items and order items
The reasoning for design choices, the use of primary keys and foreign keys

Data Dictionary
Explain the structure of each table, this includes column name, data type, description, primary/foreign key indicators
Normalization Explanation, how transitive or partial dependencies were removed and how the design avoids redundancies.

Implementation (SQL Scripts)
Include create table statements, key constraints, sample insert statements.

Sample Queries and Use Cases
Demonstrate how the database is used
(view all the reservations for a given day, retrieve customer order history, calculate total sales per day)

Testing and Evaluation
Describe how the database was and any findings or improvements made.

Limitations and Future Enhancements
What this current iteration lacks and what could possibly be done to improve it.
 
Conclusion

Summarize the project and its outcome.
