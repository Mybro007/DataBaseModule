select al.album_name
from album al
join authorsalbums aa on aa.janre_id = al.album_id  
join author ath on ath.author_id = aa.author_id 
join authorsjanres aj on aj.author_id = ath.author_id 
group by aj.author_id 
having count(aj.janre_id)>1;