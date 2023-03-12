CREATE DATABASE Lucky_Shrub;
USE Lucky_Shrub; 

CREATE TABLE Orders 
(
OrderID INT NOT NULL PRIMARY KEY, 
ClientID VARCHAR(10), 
ProductID VARCHAR(10),
Quantity INT, 
Cost DECIMAL(6, 2)
);
INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES 
(1, 'Cl1', 'P1', 10, 500),
(2, 'Cl2', 'P2', 5, 100),
(3, 'Cl3', 'P3', 20, 800), 
(4,'Cl4', 'P4', 15, 150), 
(5, 'Cl5', 'P5', 10, 450),
(6, 'Cl6', 'P6', 5, 800), 
(7, 'Cl7', 'P7', 22, 1200), 
(8, 'Cl8', 'P8', 15, 150);

select * from Orders;
/*Task 1: Write a SQL statement to create the OrdersView Virtual table based on the Orders table. 
The table must include the following columns: Order ID, Quantity and Cost. Once you have executed the query, 
select all data from the OrdersView table. The expected output result should be the same as the following 
screenshot (assuming that you have created and populated the table correctly).
*/
CREATE VIEW Ordersview as select Orders.OrderID,Orders.Quantity,orders.Cost from Orders;



select * from Ordersview;

/*Task 2: Write a SQL statement that utilizes the ‘OrdersView’ virtual table to Update the base Orders table.
In the UPDATE TABLE statement, change the cost to 200 where the order id equals 2. Once you have executed the
query, select all data from the OrdersView table. The expected output result should be the same as the following 
screenshot (assuming that you have created and populated the table correctly).*/


update Ordersview set cost=500 where OrderID=2;


/*alter view Ordersview RENAME to ClientsOrdersView;*/
EXEC sp_rename 'Ordersview', 'ClientsOrdersView';
RENAME TABLE OrdersView TO ClientsOrdersView;

drop view ClientsOrdersView;

