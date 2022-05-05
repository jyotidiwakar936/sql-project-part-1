create database Cricket
use Cricket

CREATE TABLE Cricketer
(Cric_ID INT PRIMARY KEY IDENTITY(100,1), 
Cric_Name VARCHAR(50), 
Department_ID INT, 
Salary DECIMAL)

INSERT INTO Cricketer VALUES
('Sachin Tendulkar',10,20000),
('Mahendra Singh Dhoni',20,10000),
('Yuvraj Singh',10,14900),
('Rohit Sharma',20,9800),
('Virendra Sehwag',30,20000),
('Sourabh Ganguly',40,85000),
('Ravi Shastri',50,15000),
('Rahul Dravid',20,35000),
('Anil Kumble',30,15000),
('Dinesh Kartik',20,10000),
('Andrew Flintoff',10,8500),
('Hardik Pandya',60,8000),
('Aaron Finch',10,15000),
('Shane Warne',30,15000),
('Ricky Ponting',10,15000),
('Glenn McGrath',10,15000),
('Muttiah Muralitharan',10,15000),
('Zaheer Khan',10,10000),
('Suresh Raina',10,15000),
('R Ashwin',10,10500),
('Rashid Khan',10,8900),
('KS Williamson',10,9000),
('BB McCullum',10,14000),
('Jasprit Bumrah',10,15000),
('ABD',10,20000)

select * from Cricketer

--Q1.- Write a Query to display the employee details whose salary is less than10000.
select * from Cricketer where Salary<10000

--Q2. Write a Query to display the employee details whose salary is greater than or equal to 9000 and less than 15000.
Select * from Cricketer where Salary>=9000 and Salary<15000

--Q3. Write a Query to display the employee details whose salary is not between 9000 and 15000.
Select * from Cricketer where Salary not between 9000 and 15000

--Q4. write a Query to display the employee details whose name starts'r'.
select *from cricketer where Cric_Name like 'r%'

--Q5. write a Query to display the employee details whose name ends'y'.
select *from cricketer where Cric_Name like '%y'

--Q6. write a Query to display the employee details whose name contains the latter 'a'..
select *from cricketer where Cric_Name like '%a%'

--Q7. write a Query to display the employee details whose name contains the only three latter.
select *from cricketer where Cric_Name like '___'

--Q8. write a Query to display the employee details whose name contains'r'and salary greater than 9000.
select *from cricketer where salary=9000 and Cric_Name like'_r'

--Q9. write a Query to display the employee details whose salary is greater than sachin thendualkar.
select * from cricketer where salary>(select salary from cricketer where Cric_Name='Sachin Tendulkar')

--Q10. write a Query to display the employee details whose employee id starts with 1 and with 1.
select * from cricketer where Cric_ID like '1%1'


--Q11. write a Query to change the dept no as'10'whose employee id is 101,103,107.
update cricketer set Department_ID=10 where Cric_ID=101
update cricketer set Department_ID=10 where Cric_ID=103
update cricketer set Department_ID=10 where Cric_ID=107

--Q12. write a Query to change the dept no as'20'whose does not have deptno
update cricketer set Department_ID=50 where Department_ID=20

--Q13. write a Query to change the employee salary as 12000 who are working under 10 dept and their names starts with'r'.
update cricketer set salary=12000 where Department_ID >40 or Cric_Name like 'r%'
select * from Cricketer where Department_ID >40 and Cric_Name like 'r%'

--Q14. write a Query to change the dept no 30 whose second letter is 'a'.
update Cricketer set Department_ID=30  where Cric_Name like '_a%'

--Q15. Write a query to change the employee salaries as 8500 who are working under 10 and 20 deptno
update Cricketer set salary=8500  where Department_ID between 10and 20

--Q16. Write a query to change the employee salaries as 8500 who are not working under 10 and 20 deptno
update Cricketer set salary=8500  where Department_ID  not between 10 and 20

--Q17. Write a query to change the employee salaries as 15000 and names ends with ‘m’ & working under 10 deptno
update Cricketer set salary=15000  where Department_ID=10  and  Cric_Name like '%m'

--Q18. Write a query to change the employee salaries as 5500 whose employee id ends with 4 and deptno starts with 2
update Cricketer set salary=5500  where Cric_ID like '%4'  and  Department_ID like '%2'

--Q19. Write a query to change the employee salaries as 25000 whose salary less than 10000 and the name contains letter ‘a’ and working under dept 20
update Cricketer set salary=25000  where salary <10000 and Cric_Name like '%a%'  and  Department_ID =20



--Q20. Write a query to change the employee salaries as 10000 whose salary is greater than or equal to 8500 and less than or equal to 9000

update Cricketer set salary=10000  where salary >=8500 and salary <=9000


