/*
Osztott hüvelyen jelölni:
SWL: 2500 kg
MAKE: ELEMENT C
MODEL: HOSE
HOSE SERIAL NO.: 60152
*/
/*
select Egyebek
from
	rendelestetel
where
	rendelesaz = 17770
	and tetelsrsz = 20
*/

update rendelestetel
set
	Egyebek = 'Osztott hüvelyen jelölni:' + Char(13)
		+ 'SWL: 2500 kg' + Char(13)
		+ 'MAKE: ELEMENT C' + Char(13)
		+ 'MODEL: HOSE' + Char(13)
		+ 'HOSE SERIAL NO.: 60152'
where
	rendelesaz = 17770
	and tetelsrsz = 20
