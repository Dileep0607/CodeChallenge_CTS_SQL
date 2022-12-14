create database marks;
use marks;
CREATE TABLE ExaminationMarks(
Record_id VARCHAR(20) PRIMARY KEY,
stud_id VARCHAR(20),
stud_name VARCHAR(40),
stud_standard VARCHAR(30),
stud_section VARCHAR(20),
FirstLanguage INT(20),
SecondLanguage_Marks150 INT(20),
ThirdLanguage_Marks100 INT(20),
GeneralScience100 INT(20),
Mathematics100 INT(20),
SocialScience100 INT(20),
Student_Avg_Marks INT(20),
Remarks VARCHAR(20)
);


INSERT INTO ExaminationMarks VALUES('9','96','Hrithik','10','B',36,41,45,30,30,57,37,'Try');


SELECT stud_name, stud_standard, Student_Avg_Marks, GeneralScience100, Mathematics100, GeneralScience100+Mathematics100 AS ScienceMathsTotal 
FROM ExaminationMarks
WHERE Student_Avg_Marks >=75 AND GeneralScience100 >= 75 AND Mathematics100 >=75;
