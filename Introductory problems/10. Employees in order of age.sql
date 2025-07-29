/*
Question 10: Employees, in order of age
------------------------------------------------
Show FirstName, LastName, Title and BirthDate from Employees table and order results by 
birthdate from oldest employees first
*/

SELECT firstname,
       lastname,
       title,
       birthdate
FROM   [SQL_Problems].[dbo].[employees]
ORDER  BY birthdate ASC