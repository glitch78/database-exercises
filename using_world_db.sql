use world;

SELECT Count(*) Name
FROM country
where Name like 'j%';

SELECT CONCAT(city.name, ',', country.name),city.Population
       from city
JOIN country on code = city.CountryCode
order by Population DESC

limit 10;