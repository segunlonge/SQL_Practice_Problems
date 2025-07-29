/*
Question 11: Showing only the Date with a DateTime field
------------------------------------------------
Show FirstName, LastName, Title and BirthDate from Employees table and order results by 
birthdate from oldest employees first (but only show the date portion of the BirthDate without the time in hours, mins, secs)
*/

SELECT firstname,
       lastname,
       title,
	   convert(Date, birthdate) as BirthDate
FROM   [SQL_Problems].[dbo].[employees]
ORDER  BY birthdate ASC