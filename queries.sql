-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p."ProductName", c."CategoryName"
FROM "Product" AS p
JOIN "Category" AS c
WHERE p."CategoryId" = c."Id";

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o."Id", s."CompanyName"
FROM "Order" AS o 
JOIN "Shipper" AS s
WHERE o."ShipVia" = s."Id" AND o."OrderDate" < "2012-07-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p."ProductName", o."Quantity"
FROM "OrderDetail" as o 
JOIN "Product" as p
WHERE o."OrderId" = 10251 AND o."ProductId" = p."Id";

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o."Id" OrderId, c."CompanyName" CustomerCompanyName, e."LastName" EmployeeLastName
FROM "Order" AS o
JOIN "Customer" AS c 
JOIN "Employee" AS e
WHERE o."CustomerId" = c."Id" AND o."EmployeeId" = e."Id";