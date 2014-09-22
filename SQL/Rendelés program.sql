select
	rp.Rendelésszám, rp.Pozíció, rp.Revízió, rp.Megrendelõ, rp.Felhasználó, 
	rp.Gyártási_területkód, gyh.HelyNev, rp.Specifikáció, rp.Cikkszám, rp.db, rp.Hossz, 
	rp.Lélekanyagkód, la.Anyagnév, rp.Sodronytipuskód, st.Sodronynév, rp.SodrMennyiség, 
	rp.Normaidõ, rp.Státusz, rp.Határidõ, rp.Rögzítette, rp.RögzIdõpont, 
	rp.ProgÉv, rp.ProgHónap, rp.Megjegyzés, rp.Kiadott_átvételi, 
	rp.Érték, rp.Lángálló, rp.Belsõgégecsõ, rp.Külsõgégecsõ, rp.Interlock, 
	rp.Poliamid, rp.Külsõvédelem, rp.Inspektor, rp.Festés, rp.Id, rp.Sorrend
from 
	RendelesProgram rp
	Left Outer Join Gyartohelyek gyh On (gyh.HelyKod = rp.Gyártási_területkód)
	Left Outer Join Lelekanyagok la On (la.Anyagkód = rp.Lélekanyagkód)
	Left Outer Join SodronyTipusok st On (st.Sodronykód = rp.Sodronytipuskód)
order by
	rp.ProgÉv, rp.ProgHónap, gyh.HelyNev, rp.sorrend