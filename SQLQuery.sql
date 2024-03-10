create database covid
use covid
select * from covid_data

/* find country-wise sum of total death */
select Country_Region,sum(TotalDeaths) as total_deaths from covid_data group by Country_Region

/* find top 10  highest rank based on country and sum of total recovered */
select top 10  Country_Region,TotalRecovered,dense_rank()over(order by TotalRecovered desc) as rank from covid_data

/* Continent-wise Total_death */
select Continent,sum(TotalDeaths) as Total_deaths from covid_data group by Continent

/* show running_total of Total_death Continent-wise */
select *,sum(TotalDeaths)over(partition by continent) as running_total from covid_data

/* Country-wise Active_cases */
select Continent,sum(ActiveCases) as Active_cases from covid_data group by Continent

/* Top 10 Country-wise Total_cases */
select top 10  Country_Region,TotalCases,dense_rank()over(order by TotalCases desc) as rank from covid_data

