create database staf;
use staf;
create table staff(
	staff_id int(11) primary key,
	staff_name varchar(25),
	supervisor_id int(11),
	salary bigint(20),
	join_date DATE,
	dept_id int(11)
	);
	create table department(
	dept_id INT(11),
	dept_name varchar(25)
	);
	Insert into staff values(1,'krishna',31,71000,'2020-12-05',10),(2,'ranjith',32,49000,'2020-12-01',11),(3,'gopi',33,60000,'2020-07-19',10),
	(4,'pavan',34,2000,'2020-07-09',11),(5,'gopal',31,30000,'2020-06-19',10);

	SELECT staff_id,staff_name,salary,dept_id	
	FROM STAFF
	WHERE salary > (select avg(salary) from staff where dept_id = 10) AND dept_id=10;
