-- PA-s tömlõk 
select *
	--distinct replace(standard, ' ', '')
from SapRendSpec_ 
where 
	cikkszam like '425[6,7]%'
	and PATINDEX('%16C%', replace(standard, ' ', '')) <> 0
	and PATINDEX('%DRAFT%', replace(standard, ' ', '')) = 0

--PATINDEX('%won_erful%', notes)
order by replace(standard, ' ', '')
--select * from SapRendSpec_ where cikkszam like '425%' and cover = ''