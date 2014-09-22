select
	rp.Rendel�ssz�m, rp.Poz�ci�, rp.Rev�zi�, rp.Megrendel�, rp.Felhaszn�l�, 
	rp.Gy�rt�si_ter�letk�d, gyh.HelyNev, rp.Specifik�ci�, rp.Cikksz�m, rp.db, rp.Hossz, 
	rp.L�lekanyagk�d, la.Anyagn�v, rp.Sodronytipusk�d, st.Sodronyn�v, rp.SodrMennyis�g, 
	rp.Normaid�, rp.St�tusz, rp.Hat�rid�, rp.R�gz�tette, rp.R�gzId�pont, 
	rp.Prog�v, rp.ProgH�nap, rp.Megjegyz�s, rp.Kiadott_�tv�teli, 
	rp.�rt�k, rp.L�ng�ll�, rp.Bels�g�gecs�, rp.K�ls�g�gecs�, rp.Interlock, 
	rp.Poliamid, rp.K�ls�v�delem, rp.Inspektor, rp.Fest�s, rp.Id, rp.Sorrend
from 
	RendelesProgram rp
	Left Outer Join Gyartohelyek gyh On (gyh.HelyKod = rp.Gy�rt�si_ter�letk�d)
	Left Outer Join Lelekanyagok la On (la.Anyagk�d = rp.L�lekanyagk�d)
	Left Outer Join SodronyTipusok st On (st.Sodronyk�d = rp.Sodronytipusk�d)
order by
	rp.Prog�v, rp.ProgH�nap, gyh.HelyNev, rp.sorrend