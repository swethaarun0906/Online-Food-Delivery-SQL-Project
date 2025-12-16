create database FoodDelivery
use FoodDelivery
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100)
);
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    Name VARCHAR(100),
    Cuisine VARCHAR(50)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,RestaurantID INT,OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);
CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY,
    CustomerID INT,RestaurantID INT,
    Score INT CHECK (Score BETWEEN 1 AND 5),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);
INSERT INTO Customers VALUES
(1, 'Swetha', 'swetha@email.com'),
(2, 'Karthik', 'karthik@email.com'),
(3, 'Priya', 'priya@email.com');
INSERT INTO Restaurants VALUES
(1, 'A2B', 'South Indian'),
(2, 'Dominos', 'Pizza'),
(3, 'KFC', 'Fast Food');
INSERT INTO Orders VALUES
(101, 1, 1, '2025-09-15', 250.00),
(102, 2, 2, '2025-09-16', 499.00),
(103, 1, 3, '2025-09-17', 300.00),
(104, 3, 2, '2025-09-18', 700.00);
INSERT INTO Ratings VALUES
(1, 1, 1, 5),
(2, 2, 2, 4),
(3, 1, 3, 3),
(4, 3, 2, 5);
select*from customers
select*from restaurants
select*from ratings
select*from orders
SELECT 
    R.RestaurantID,
    R.Name AS RestaurantName,
    COUNT(O.OrderID) AS TotalOrders
FROM Restaurants R
JOIN Orders O ON R.RestaurantID = O.RestaurantID
GROUP BY R.RestaurantID, R.Name
ORDER BY TotalOrders DESC;

SELECT 
    R.RestaurantID,
    R.Name AS RestaurantName,
    SUM(O.Amount) AS TotalRevenue
FROM Restaurants R
JOIN Orders O ON R.RestaurantID = O.RestaurantID
GROUP BY R.RestaurantID, R.Name
ORDER BY TotalRevenue DESC;
SELECT 
    RestaurantID,
    AVG(Score) AS AverageRating
FROM 
    Ratings
GROUP BY 
    RestaurantID;
   
SELECT CustomerID COUNT(OrderID) AS TotalOrders FROM Orders GROUP BY  CustomerID HAVING COUNT(OrderID) > 1;
SELECT 
    CustomerID,
    COUNT(OrderID) AS TotalOrders,
    RANK() OVER (ORDER BY COUNT(OrderID) DESC) AS LoyaltyRank
FROM 
    Orders
GROUP BY 
    CustomerID;
    SELECT 
    CustomerID,
    COUNT(OrderID) AS TotalOrders,
    DENSE_RANK() OVER (ORDER BY COUNT(OrderID) DESC) AS LoyaltyRank
FROM 
    Orders
GROUP BY 
    CustomerID;
  
SELECT 
    OrderDate,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderDate
ORDER BY TotalOrders DESC;