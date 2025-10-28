/*
Question 27: High freight charges with between
------------------------------------------------

Problem query shows Sweden with the third highest average freight. The problem is with the dates with time parts which are
being left out. It is necessary to convert the date and remove the time part
*/

Select top 3
	shipcountry,
	averagefreight = avg(freight)
from orders
where convert(date, orderdate) between '20150101' and '20151231'
group by shipcountry
order by averagefreight desc