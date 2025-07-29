/*
Question 17: Contact titles for customers
------------------------------------------------
Show list of contact titles and show the count for each title
*/

SELECT contacttitle,
       Count(contacttitle) AS TotalContactTitle
FROM   [SQL_Problems].[dbo].[customers]
GROUP  BY contacttitle
ORDER  BY Count(contacttitle) DESC 
