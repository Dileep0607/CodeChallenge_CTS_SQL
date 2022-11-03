create database zee;
use zee;
CREATE TABLE Zeerentals
(
rental_id varchar(10) primary key,
cust_id varchar(10),
laptop_id varchar(10),
pick_date DATE,
return_date DATE,
amount BIGINT(20)
);

insert into Zeerentals values('1','4','9','2020-05-06','2020-06-06','7400'),('2','5','11','2020-06-06','2020-07-06','9500'),
('3','6','13','2020-05-06','2020-05-26','6000'),('4','7','17','2020-05-06','2020-06-26','11000');

SELECT rental_id,cust_id,laptop_id,amount,RPAD(amount,10,"*") AS modifiedamount FROM Zeerentals 
WHERE amount>7000 AND pick_date BETWEEN '2020-05-01' AND '2020-05-31'
ORDER BY rental_id;
