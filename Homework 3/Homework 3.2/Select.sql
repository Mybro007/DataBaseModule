select title, duration
from track 
order by duration desc 
limit 1;

select title
from track 
where duration >= 210;

select collection_name
from colection 
where collection_year between 2018 and 2020;

select nickname
from author 
where nickname not like '% %';

select title
from track 
where title like '%my%';