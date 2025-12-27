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

Data Dictionary
-This is depicted in the "Data Dictionary" document.
Explain the structure of each table, this includes column name, data type, description, primary/foreign key indicators
Normalization Explanation, how transitive or partial dependencies were removed and how the design avoids redundancies.

Design Overview
Database schema, tables, relationships and relevant diagrams
How the database is structured.
Explanation of relationships between customers, reservations, orders, menu items and order items
The reasoning for design choices, the use of primary keys and foreign keys
Implementation (SQL Scripts)
Include create table statements, key constraints, sample insert statements.

Sample Queries and Use Cases
We seek to ask and answer questions like the following:
What are the peak hours for orders in the restaurant?
How often are tables used over time?
Which customers have placed the most orders?
Which menu item sells the most?
What is the revenue by day?
What is the revenue by week?
What are the high cancelation periods?

Testing and Evaluation
An analysis of order data revealed that peak ordering hours occur between 6 PM and 9 PM, indicating a strong dinner service demand. Additionally, best-selling menu items were identified by aggregating order quantities, allowing management to prioritize inventory and promotional strategies. Revenue analysis by day further highlighted consistent sales patterns, supporting informed staffing and operational planning..

Limitations and Future Enhancements
What this current iteration lacks and what could possibly be done to improve it.

Average preparation time cannot be calculated with the current schema, as the database does not track order start and completion timestamps. A future enhancement would include fields such as PrepStartTime and PrepEndTime in the Orders table.
Orders aren't identified per server per shift however this could be a useful metric and updated in the future.
The database currently doesn't track the type of order, be it dine in or takeout, this could be a useful metric to implement.

Conclusion

The Mintafé Restaurant Ordering and Reservation database was successfully designed and implemented to support business and operational functions at its core and bring dining into the modern era. This database enables efficient storage, retrieval and analysis of customers, reservations, orders and menu information. This is facilitated by the structured use of relational tables, primary and foreign key relationships and normalized data design.
The execution of analytical SQL queries demonstrated the the system’s ability ti provide meaningful insights, including peak ordering periods, table utilization, best-selling menu items, revenue trends, and cancellation patterns. These insights highlight how a well-designed database can support informed decision-making, improve operational efficiency and enhance customer service within a restaurant setting.
While certain analytical capabilities sucj as preparation time analysis, staff performance tracking and order type comparisons aren’t available upon launch, these showcase a clear path forward and added opportunities for enhancement.

