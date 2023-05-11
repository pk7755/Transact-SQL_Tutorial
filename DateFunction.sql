Select getdate() as currentdatetime;

Select datepart(day, getdate()) as currentdate;

Select datepart(month, getdate()) as currentmonth;

Select dateadd(day, 10, getdate()) as after10daysdatetimefromcurrentdatetime;

Select datediff(hour, 2015-11-16, 2015-11-11) as 
differencehoursbetween20151116and20151111 ;

SELECT CONVERT(VARCHAR(19),GETDATE()) 
SELECT CONVERT(VARCHAR(10),GETDATE(),10) 
SELECT CONVERT(VARCHAR(10),GETDATE(),110)