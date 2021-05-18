use worlcountrycountrylanguaged;
show databases;
show tables;
desc city;
select count(*) from city;
select * from city where Countrycode='kor'limit 50;
select * from city where Countrycode='jpn'limit 50;
desc country;
select count(*) from country;
desc countrylanguage;
select count(*) from countrylanguage;
select * from countrylanguage;
select * from city where name in ('seoul', 'new york');

select * from city where CountryCode =
	(select CountryCode from city where name = 'seoul');
    
select * from city where CountryCode = 'kor' order by 'Population';
select * from city where CountryCode = 'kor' order by Population desc limit 10;

select countrycode, Max(Population) from city
	group by CountryCode having max(Population) > 9000000;

select city.Name, city.CountryCode, city.Population, country.GNP
from city
join country
where city.CountryCode = country.code

