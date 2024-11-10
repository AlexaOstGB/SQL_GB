use spop

/*Создайте хранимую процедуру с именем «GetEmployeeOrders».
который принимает идентификатор сотрудника в качестве
параметра и возвращает все заказы, обработанные этим
сотрудником.
Пропишите запрос, который создаст требуемую процедуру.*/

call spop.getemployeeorders(3)

/*
CREATE PROCEDURE spop.getemployeeorders(_EmployeeID int)
BEGIN
	SELECT
	o.OrderID,
	o.EmployeeID
	FROM Orders o 
	WHERE o.EmployeeID = _EmployeeID;
END;
*/

/*Создайте таблицу EmployeeRoles, как на уроке и удалите ее.
Напишите запрос, который удалит нужную таблицу.*/

drop table EmployeeRoles

create table EmployeeRoles(
	order_status_id INT auto_increment primary KEY,
	order_id INT,
	ststus VARCHAR(100)
)

/*Удалите все заказы со статусом 'Delivered' из таблицы OrderStatus,
которую создавали на семинаре
Напишите запрос, который удалит нужные строки в таблице.*/

delete from order_status 
where ststus = "Delivered"
