select countries.name, languages.language, languages.percentage 
from countries 
join languages on countries.id=languages.country_id 
where language= 'Slovene' order by percentage desc;

select countries.name as name ,count(cities.id) as conteo from cities 
join countries on cities.country_id=countries.id
group by countries.id order by conteo desc;

select cities.name,cities.population from cities join countries on cities.country_id=countries.id
 where country_id='136' and cities.population > 500000 order by cities.name desc;
 
 select countries.name,languages.language,languages.percentage from languages 
 join countries on languages.country_id=countries.id
 where languages.percentage > 89 order by languages.percentage desc;
 
 select countries.name,surface_area,population from countries 
 where surface_area < 501 and population >100000;
 
 select countries.name,government_form,capital,life_expectancy from countries
 where capital >200 and life_expectancy > 75 and government_form='Constitutional Monarchy';
 
 
select countries.name,cities.name,district,cities.population from countries join cities on cities.country_id=countries.id
where district='Buenos Aires' and cities.population > 500000;

select countries.region,count(countries.id) as pais from countries group by countries.region 
order by pais desc;

-- select nombre tabla.nombre columna (datos a seleccionar)
-- from nombretabla(desde que tabla se trabaja)
-- join nombretabla(unir tablas) 
-- on nombretabla.clave primaria=nombretabla.claveforania(union de id) 
-- wrehe (condicion de )
-- group by (solo operacion matematicas se usa )
-- order by nombretabla.nombrecolumna asc(asesndente) o desc(desendente) 
