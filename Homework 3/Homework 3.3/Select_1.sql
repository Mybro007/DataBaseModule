select j.janre_name, count(a.author_id)
from janre j
join authorsjanres a on  j.janre_id = a.janre_id
group by j.janre_name  

select count(t.track_id)
from track t 
join album a on t.album_id = a.album_id  
where a.album_year between 2019 and 2020;

select a.album_name, avg(t.duration)
from album a
join track t on a.album_id = t.album_id 
group by a.album_name ;

select ath.nickname
from author ath
join authorsalbums a on ath.author_id = a.janre_id 
join album a2 on a2.album_id = a.janre_id 
where a2.album_year != 2020;

select col.collection_name
from colection col
join collectionstracks ct on ct.collection_id = col.collection_id 
join track tr on tr.track_id = ct.track_id 
join album al on al.album_id = tr.album_id 
join authorsalbums aa on aa.janre_id = al.album_id 
where aa.author_id = 1;