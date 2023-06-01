-- MS SQL Server Question
-- https://www.w3schools.com/sql/func_sqlserver_dateadd.asp

CREATE PROCEDURE ItemsBought (@date DATE) AS
BEGIN
    SELECT DAY(dateBought) as day, MONTH(dateBought) as month, name FROM items 
    WHERE dateBought >= @date AND dateBought <= DATEADD(month, 1, @date);
END;