select top 3
shipcountry,
averagefrieght = avg(freight)
from orders
--where year(orderdate) = 2015
where orderdate >= DATEADD(YEAR,-1,(select max(orderdate) from orders))
group by shipcountry
order by averagefrieght desc