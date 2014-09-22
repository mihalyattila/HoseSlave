DECLARE  @TEMP TABLE (FieldName varchar(50), Caption varchar(50))

INSERT INTO @TEMP EXEC GetTableFieldCaption 'RendelesTetel', 0

select 
	rf.RendSz, 
	rtm.TetelSrsz, 
	rtm.Sorszam, 
	FieldName = case when t.Caption is null then rtm.FieldName else t.Caption end,
	rtm.OldValue, 
	rtm.NewValue, 
	rtm.ModifierName, 
	rtm.ModifyDate
from 	RendelesTetelMod rtm
	left outer join @Temp t On (rtm.FieldName = t.FieldName), 
	RendelesFej rf
where
	rf.Rendsz = '538944'
	and rf.RendelesAz = rtm.RendelesAz
	and TetelSrsz = 10
order by 
	ModifyDate desc