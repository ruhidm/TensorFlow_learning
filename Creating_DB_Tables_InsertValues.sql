
/* Let's create a Database */
CREATE DATABASE Customer;
DROP TABLE Info;

/* Creating a tables */
/* Table 1*/
CREATE TABLE Info (
CustomerId INT, 
Name VARCHAR(15),
Gender VARCHAR(6),
Age INT, 
Location VARCHAR(15),
Primary Key(CustomerID));

/* Table 2*/
CREATE TABLE Income ( 
CustomerID INT ,
Income FLOAT, 
JobTytle VARCHAR(30), 
WorkType VARCHAR(30), 
WorkExp INTEGER,
Primary Key(CustomerId)
)

/* Inserting values to Info table */
INSERT INTO Info VALUES (223, 'Daniel', 'Female', 33, 'Toronto');  
INSERT INTO Info VALUES (255, 'John', 'Male', 34, 'North York');  
INSERT INTO Info VALUES (224, 'Rob', 'Male', 25, 'Brampton'); 
INSERT INTO Info VALUES (245, 'Ned', 'Male', 51, 'Toronto'); 
INSERT INTO Info VALUES (290, 'Arya', 'Female', 19, 'Toronto'); 
INSERT INTO Info VALUES (256, 'Sansa', 'Female', 21, 'North York'); 
INSERT INTO Info VALUES (298, 'Brandon', 'Male', 23, 'Toronto'); 
INSERT INTO Info VALUES (267, 'Drew','Male',  67, 'Vaughan'); 
INSERT INTO Info VALUES (242, 'Jim', 'Male', 36, 'North York'); 
INSERT INTO Info VALUES (287, 'David', 'Male', 43, 'Vaughan');
INSERT INTO Info VALUES (212, 'Kevin','Male', 35, 'Toronto'); 
INSERT INTO Info VALUES (209, 'Oven', 'Male', 28, 'North York'); 
INSERT INTO Info VALUES (274, 'Michael', 'Male', 29, 'Vaughan'); 
INSERT INTO Info VALUES (239, 'Pam', 'Female', 36, 'Toronto'); 
INSERT INTO Info VALUES (291, 'Peter', 'Male', 35, 'Brampton'); 
INSERT INTO Info VALUES (248, 'Alisa', 'Female', 30, 'Toronto'); 

/* Inserting values to Income table */
INSERT INTO Income VALUES (255, '74553', 'Branch Manager', 'Employee', 9);
INSERT INTO Income VALUES (248, '65234', 'Designer', 'Employee', 7);
INSERT INTO Income VALUES (209, '45321', 'Worker', 'Self-employed', 4);
INSERT INTO Income VALUES (256, '23321', 'Cashier', 'Employee', 1);
INSERT INTO Income VALUES (274, '36743', 'Carpenter', 'Self-employed', 2);
INSERT INTO Income VALUES (239, '38963', 'Reception', 'Employee', 3);
INSERT INTO Income VALUES (287, '123987', 'CEO', 'Corporation', 12);
INSERT INTO Income VALUES (242, '52232', 'Sales', 'Employee', 4);
INSERT INTO Income VALUES (224, '35432', 'Teller', 'Employee', 2);
INSERT INTO Income VALUES (267, '23321', 'Retiree', 'Retired', 3);
INSERT INTO Income VALUES (290, '20000', 'Scholarship', 'Student', 0);

/* Now let's see how our tables look like */
SELECT * FROM Info;
SELECT * FROM Income;

/* Part 1 - Info table */

/* Question 1 
Females who live in Toronto 
Answer: We need to use SELECT statement and WHERE clause; */

SELECT Name, Gender, Location FROM Info WHERE Gender = 'Female' and Location = 'Toronto';

/* Question 2
Find females under 30 years old
Answer : We need to use again SELECT St and WHERE clause with condition; */

SELECT * FROM Info WHERE Gender = 'Female' and Age < 30;

/* Question 3 
Find people living in North York and sort by age (From youngest to oldest)
 Answer: We are going to use SELECT and ORDER Clause */
  
 SELECT * FROM Info WHERE Location = 'North York' ORDER BY AGE ASC;

/* Part 2 - Income table */

/* Question 4
Find average income for employee(work type) 
Answer: We will use average - AVG function */

SELECT AVG(Income) as average FROM Income WHERE WorkType = 'Employee';

/* Question 5
Find people who gain money more than average.
Answer: We need to use average function with condtiotion */

SELECT AVG(Income) as average FROM Income;
/* So average is 49009.72 */

SELECT * FROM Income 
WHERE Income > (SELECT AVG(Income) FROM Income);

/* Question 6 
Find people's average income who are not employee
Answe: We will use AVG() function. */

SELECT AVG(Income) as Average_Income FROM Income
WHERE WorkType != 'Employee';

/* Part 3 - 