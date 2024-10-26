/*SELECT * FROM Clusters
WHERE (sex = "female" AND age >= 60) OR
		(sex = "male" AND age >=65)
ORDER BY sex DESC, age; 

SELECT product_type FROM Clusters
WHERE (sex = "female" AND age >= 60) OR
		(sex = "male" AND age >=65)
ORDER BY income 
LIMIT 10

SELECT *, income-credit_amount AS dif FROM Clusters
ORDER BY dif DESC  

SELECT * FROM Clusters
where cluster IN (3,5) and income > 120000  

SELECT * FROM Clusters
where product_type LIKE "%ces" 

SELECT CONCAT(LOWER(education), "(", (LOWER(sex), ")") AS nname FROM Clusters -- ??

SELECT COUNT(DISTINCT credit_term) FROM Clusters

DECLARE @s_date = '2023-09-01', @f_date = '2023-12-01'
SELECT OrdedrDate BETWEEN @s_date AND @f_date*/


-- Задание №1: Определите, сколько уникальных стран представлено среди клиентов.
SELECT COUNT(DISTINCT Country) FROM Customers
-- 21

-- Задание №2: Определите количество клиентов, которые проживают в Бразилии.
SELECT COUNT(*) FROM Customers
WHERE Country = "Brazil" 
-- 9

-- Задание №3: Посчитайте среднюю цену и общее количество товаров в категории с идентификатором 5.
SELECT 
SUM(Price)/COUNT(*) AS Mean, 
COUNT(*) AS Itogo 
FROM Products
WHERE CategoryID = 5
--20,25

-- Задание №4: Вычислите средний возраст сотрудников на дату 2024-01-01.
SELECT AVG(2024-01-01 - BirthDate) AS Bd
FROM Employees
--64,6

--Задание №5: Заказы в период 30 дней до 2024-02-15 Найдите заказы, сделанные в период с 16 января по 15 февраля 2024 года, и отсортируйте их по дате заказа.
SELECT * FROM Orders
WHERE OrderDate BETWEEN '2024-01-16' AND '2024-02-15'
ORDER BY OrderDate

-- Задание №6: Определите количество заказов, сделанных в ноябре 2023 года, используя начальную и конечную дату месяца
SELECT COUNT(*) FROM Orders
WHERE OrderDate BETWEEN '2023-11-01' AND '2023-11-31'
--25

-- Задание №7: Количество заказов за январь 2024 года (используя LIKE)
SELECT * FROM Orders
where OrderDate LIKE "____-01-__" 

--Задание №8: Определите количество заказов за 2024 года, используя функцию STRFTIME для извлечения года.
SELECT COUNT(*) FROM Orders
WHERE YEAR(OrderDate) = 2024
