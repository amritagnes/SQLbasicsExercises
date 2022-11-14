--1.Write SQL query to sum all the funding AmountinUSD, where City location equals “Bengaluru”
SELECT CityLocation, SUM(AmountinUSD) as sum_all_funding FROM indian_startup_funding WHERE CityLocation='Bengaluru';
--2.Write SQL query to sort the table by startup name DESC
SELECT * FROM indian_startup_funding ORDER BY StartupName DESC;
--3.Write SQL query to sum all the funding AmountinUSD, where City location equals “Bengaluru”and AmountinUSD>380000
SELECT SUM(AmountinUSD) as sum_all_funding FROM indian_startup_funding WHERE CityLocation='Bengaluru' AND AmountinUSD>380000;
--4.Write SQL query to get all CityLocations that has an AmountinUSD >380000
SELECT CityLocation FROM indian_startup_funding WHERE AmountinUSD>380000;
--5.Write SQL query to get only unique CityLocations that has an AmountinUSD >380000
SELECT DISTINCT CityLocation FROM indian_startup_funding WHERE AmountinUSD>380000;
--6.Write SQL query to get all StartupNames where AmountinUSD<380000
SELECT StartupName FROM indian_startup_funding WHERE AmountinUSD<380000;
--7.Write SQL query to sort the output from the previous question DESC
SELECT StartupName FROM indian_startup_funding WHERE AmountinUSD<380000 ORDER BY StartupName DESC;
--8.Write SQL query to get the City location that has the maximum funding amount “Note that is thedata is not cleaned properly you will get non logical result”
SELECT CityLocation FROM indian_startup_funding WHERE AmountinUSD in (SELECT MAX(AmountinUSD)FROM indian_startup_funding);
SELECT CityLocation,MAX(AmountinUSD) FROM indian_startup_funding;
--9.Write SQL query to get the total funding AmountinUSD for each IndustryVertical
SELECT IndustryVertical,SUM(AmountinUSD) as TOT_FUNDING FROM indian_startup_funding GROUP BY IndustryVertical;
--10.Write SQL query to get the total funding AmountinUSD for each IndustryVertical that starts with letter “A”
SELECT DISTINCT IndustryVertical,SUM(AmountinUSD) as TOT_FUNDING FROM indian_startup_funding WHERE IndustryVertical LIKE 'A%' GROUP BY IndustryVertical ;
--11.Write SQL query to get the total funding AmountinUSD for each IndustryVertical that starts with letter “A” and sort the output DESC by the total AmountinUSD
SELECT DISTINCT IndustryVertical,SUM(AmountinUSD) as TOT_FUNDING FROM indian_startup_funding WHERE IndustryVertical LIKE 'A%' GROUP BY IndustryVertical ORDER BY SUM(AmountinUSD) DESC;
--12.Write SQL query to count all the start_ups in the Education field
SELECT IndustryVertical,COUNT(StartupName) FROM indian_startup_funding WHERE IndustryVertical LIKE 'ED%' GROUP BY IndustryVertical;
--13.Write SQL query to count all the start_Ups in the E-Commerce field
SELECT IndustryVertical,COUNT(StartupName) FROM indian_startup_funding WHERE IndustryVertical LIKE 'E_c%' GROUP BY IndustryVertical;
--14.Write SQL query to count all the start_Ups in the E-Commerce field, where city location equals “Bengaluru”
SELECT IndustryVertical,COUNT(StartupName) FROM indian_startup_funding WHERE IndustryVertical LIKE 'E_c%' AND CityLocation='Bengaluru';
--15.For each Industry Vertical find the total funding amount
SELECT IndustryVertical, SUM(AmountinUSD) FROM indian_startup_funding GROUP BY IndustryVertical;
--16.For each Industry Vertical find the total funding amount as “Total_fund” and the average funding amount as “Avg_Fund”.
SELECT IndustryVertical, SUM(AmountinUSD) as Total_Fund, avg(AmountinUSD) as Avg_Fund FROM indian_startup_funding GROUP BY IndustryVertical;
--17.Write SQL query to get the minimum value of funding for the “Uniphore” start_up
SELECT MIN(AmountinUSD) FROM indian_startup_funding WHERE StartupName='Uniphore';
--18.Write SQL query to get the length of the city location names
SELECT CityLocation,length(CityLocation) FROM indian_startup_funding;
--19.Write SQL query to convert start_ups names into uppercase if the funding amount is >380,000
SELECT upper(StartupName) FROM indian_startup_funding WHERE AmountinUSD>380000;
--20.Write SQL query to select distinct industry vertical names, knowing that names are mix of lowercase and uppercase values.
SELECT DISTINCT lower(IndustryVertical) FROM indian_startup_funding;