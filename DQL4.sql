create database pizzaa;
use pizzaa;
CREATE TABLE Pizza(
	Pizza_id VARCHAR(10) PRIMARY KEY,
    	Cust_id VARCHAR(10),
    	Partner_id VARCHAR(10),
    	Pizza_name VARCHAR(50),
    	Pizza_type VARCHAR(50),
    	Order_Date DATE,
    	Amount BIGINT(20)
	);

	INSERT INTO Pizza VALUES('1','5','11','corn n cheese','veg','2022-10-27',179),('2','6','12','chicken sausage','non-veg','2022-10-27',370),
	('3','7','13','chicken sausage','non-veg','2022-10-27',370)('4','8','14','corn','veg','2022-10-27',81),('5','9','15','pepper chicken','non-veg','2022-10-27',290);
	SELECT pizza_name ,MAX (Nosold) FROM (SELECT pizza_name,COUNT(pizza_name) Nosold 
	FROM pizza 
	GROUP BY pizza_name);
