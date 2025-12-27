use Mintafe_Db;
go

-- what are the peak hours for orders in the restaurant?
select 
    datepart(HOUR, OrderTime) as OrderHour,
    count(*) as TotalOrders
from Orders
where Status <> 'Cancelled'
group by datepart(HOUR, OrderTime)
order by TotalOrders desc;
go

-- how often are tables used over time?
select
    TableID,
    count(*) as UsedTables
from Orders
where Status <> 'Canceled'
group by TableID
order by UsedTables desc;
go

-- which customers have placed the most orders?
select
    c.CustomerID,
    c.FirstName,
    c.LastName,
    count(o.OrderID) as TotalOrders
from Customers c
join Orders o on c.CustomerID = o.CustomerID
where o.Status <> 'Cancelled'
group by c.CustomerID, c.FirstName, c.LastName
order by TotalOrders desc;
go

--which menu item sells the most?
select 
    m.Name,
    SUM(oi.Quantity) as TotalSold
from OrderItems oi
join MenuItems m on oi.MenuItemID = m.MenuItemID
group by m.Name
order by TotalSold desc;
go

--revenue by day
select 
    cast(o.OrderTime as DATE) as OrderDate,
    sum(oi.Quantity * m.Price) as DailyRevenue
from Orders o
join OrderItems oi on o.OrderID = oi.OrderID
join MenuItems m on oi.MenuItemID = m.MenuItemID
where o.Status = 'Completed'
group by cast(o.OrderTime as DATE)
order by OrderDate;
go

--revenue by week
select 
    datepart(WEEK, o.OrderTime) as WeekNumber,
    sum(oi.Quantity * m.Price) as WeeklyRevenue
from Orders o
join OrderItems oi on o.OrderID = oi.OrderID
join MenuItems m on oi.MenuItemID = m.MenuItemID
where o.Status = 'Completed'
group by datepart(WEEK, o.OrderTime)
order by WeekNumber;
go

--what are the high cancelation periods?
select 
    cast(OrderTime as DATE) as OrderDate,
    count(*) as CancelledOrders
from Orders
where Status = 'Cancelled'
group by cast(OrderTime as DATE)
order by CancelledOrders desc;
go