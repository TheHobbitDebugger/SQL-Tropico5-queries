select resource.name, resource.base_market_price from resource where resource.name = 'Oro' or resource.name= 'Mais';

select name, base_market_price, (base_market_price+base_market_price*22/100) as prezzo_ivato  from resource;

select first_name, last_name, age, education_level, salary from citizen where last_name = 'Castro';

select first_name, last_name from citizen where age > 45 and happiness_total between 39 and 81;

select name from BuildingType where output_resource_id <> 0;

select BuildingType.name, Resource.name from BuildingType inner Join Resource on BuildingType.output_resource_id;

select first_name, last_name, name from Citizen iner join Faction on supported_faction_id;

select first_name, last_name 
from Citizen 
inner join Building on Citizen.job_building_id = Building.id
inner join BuildingType on Building.building_type_id = BuildingType.id
inner join Resource on BuildingType.output_resource_id = Resource.id
where Resource.name = 'Mais';

select (
		(select count(*)*100 as n from Citizen where age > 17 and job_building_id <> 0)
		/
		(select count(*) as total from Citizen)
		) as percentage_adults_employed
		
select BuildingType.name, 
Buildingtype.input_resource_id as input_res, 
Buildingtype.output_resource_id as output_res
from BuildingType
inner join Resource on BuildingType.input_resource_id = resource.id
where Buildingtype.output_resource_id and Buildingtype.input_resource_id <> 0

select
	citizen.first_name, citizen.last_name, resource.name 
from 	
	resource inner join buildingType on resource.id = buildingType.output_resource_id
	inner join building on buildingType.id = building.building_type_id
	inner join citizen on citizen.job_building_id = building.id
where
	resource.name = 'Mais'

SELECT first_name, last_name, happiness_total, wealth_level FROM Citizen where first_name <> 'El Presidente' order by happiness_total desc limit 10;

select gender, education_level, avg(salary) as averageSalary, count(*) as n from citizen group by gender, education_level order by education_level, gender;

SELECT education_level, count(*) as n, avg(salary) as averageSalary from citizen group by education_level;

select wealth_level, count(*) as n, avg(happiness_total) as averageHappiness from citizen group by wealth_level

select (
			(
			select count(*)*100 as is_rebel
			from citizen
			where is_rebel = true
			)
			/
			(
			select count (*) as citizens from citizen 
			)
			) as rebelCount

select 
        citizen.first_name, citizen.last_name, citizen.salary 
from 
        faction inner join citizen on faction.id = citizen.supported_faction_id 
where 
        age >= 18 and faction.name = 'Religious'

select (
		 (select
			count(*)*100 as religious 
				from
				faction inner join citizen on faction.id = citizen.supported_faction_id
				where
				age>= 18 and faction.name = 'Religious'
				)
				/
				(
					select count (*) as citizens from citizen where age >= 18
				)
			) as religiousPercentage;
			
select count(*) as citizens from citizen where age >= 18;

			