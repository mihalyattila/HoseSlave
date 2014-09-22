/*
CREATE PROCEDURE sp_HoseDataSheet
	@CriOrderNo varchar(20)
AS
*/
declare @CriOrderNo varchar(20)
select @CriOrderNo = '437098'

select
	CriOrderNo = rs.Rendelesszam,
	Customer =  Megrendelo,
	CustomerOrderNo = VevoRefSz,
	ItemNo = Pozicio / 10,
	HoseType = 'Flexible Hose', --AnyagNeve,
	Marking = Marking,
	Standard = Standard +
	-- Az FSL besorolás megállapítása
	Case 
	when (PATINDEX('%[. ]7k%' , Standard) <> 0 and PATINDEX('%API%' , Standard) <> 0)
	then 
		' (' +
		case 
		when (PatIndex('%FSL%', StandardText) <> 0 and PatIndex('%2%', StandardText) <> 0)
		then 'FSL Level 2'
		else
			case
			when Round(dbo.UnitConvS(WorkingPressureUnit, 'psi', WorkingPressure),0) <= 7500
			then 'FSL Level 1'
			else 'FSL Level 0'
			end
		end
		+ ')'
	end,

	TypeOfPacking = case when TypeOfPacking in ('WOODEN CRATE','BOX')
		then RTrim(TypeOfPacking) + ' ISPM-15'
		else TypeOfPacking
	end,
	InsideDiaInInches = InsideDia,
	Length = RTrim(cast(length as char(10))) + ' ' + Lower(LengthUnit),
	TypeOfCouplingOneEnd = RTrim(IsNull(TypeOfCoupling1,'')) + '  ' + LTrim(IsNull(TypeOfCoupling1Text,'')),
	TypeOfCouplingOtherEnd = 
	Case when LTrim(RTrim(IsNull(TypeOfCoupling2, '') + ' ' + IsNull(TypeOfCoupling2Text, ''))) <> ''
		then LTrim(RTrim(IsNull(TypeOfCoupling2, '') + ' ' + IsNull(TypeOfCoupling2Text, '')))
		else LTrim(RTrim(IsNull(TypeOfCoupling1, '') + ' ' + IsNull(TypeOfCoupling1Text, '')))
	end,
	HoseIsSuitableForH2sService = dbo.GetH2SAbility(rs.RendelesSzam, Pozicio),
	WorkingPressure,
	WorkingPressureUnit = Lower(WorkingPressureUnit),
	DesignPressure,
	DesignPressureUnit = Lower(DesignPressureUnit),
	TestPressure,
	TestPressureUnit = Lower(TestPressureUnit),
	SafetyFactor,
	Cover,
	OutsideProtection = dbo.GetOutsideProtection(rs.RendelesSzam, Pozicio),
	InternalStripwoundTube = 
	Case when RTrim(IsNull(InternalStripwoundTube, '')) = ''
		then 'No'
		else dbo.UpperFirst(InternalStripwoundTube)
	end ,
	TypeOfLining,
	SafetyClamp = dbo.UpperFirst(SafetyClamp),
	LiftingCollar = dbo.UpperFirst(LiftingCollar),
	ElementC = dbo.UpperFirst(ElementC),
	SafetyChain = Case when dbo.SafetyChainCount(rs.RendelesSzam, Pozicio) > 0 
		then 'Yes'
		else 'No'
	end,
	SafetyWireRope = Case when dbo.SafetyRopeCount(rs.RendelesSzam, Pozicio) > 0 
		then 'Yes'
		else 'No'
	end,
	MaxDesignTemperature,
	MinDesignTemperature =
	-- A "MinDesignTemperature" rosszul kerül az adatállományba, ezért negatívra kell konvertálni
	case when MinDesignTemperature > 0 
		then MinDesignTemperature * -1 
		else MinDesignTemperature 
	end,
	MbrOperating = dbo.GetMbrOperating(rs.RendelesSzam, Pozicio),
	MbrStorage = dbo.GetMbrStorage(rs.RendelesSzam, Pozicio)
from
	RendelesSap rs,
	(select Rendelesszam, Revizio = Max(Revizio) from RendelesSap group by Rendelesszam) x
where
	rs.RendelesSzam = @CriOrderNo
	and rs.RendelesSzam = x.RendelesSzam and rs.Revizio = x.Revizio
	and (Cikkszam like ('4257%') or Cikkszam like ('4256%') or Cikkszam like ('423611%'))
order by
	rs.Pozicio
