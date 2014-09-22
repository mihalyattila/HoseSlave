select
	RendelesSzam, Standard, StandardText, WorkingPressure, WorkingPressureUnit,
	--dbo.UnitConvS(WorkingPressureUnit, 'psi', WorkingPressure),
	FSL = Case 
	when (PATINDEX('%[. ]7k%' , Standard) <> 0 and PATINDEX('%API%' , Standard) <> 0)
	then 
		case 
		when (PatIndex('%FSL%', StandardText) <> 0 and PatIndex('%2%', StandardText) <> 0)
		then 'FSL Level 2'
		else
			case
			--when WorkingPressure <= 7500 then 'FSL Level 1'
			when Round(dbo.UnitConvS(WorkingPressureUnit, 'psi', WorkingPressure),0) <= 7500
			then 'FSL Level 1'
			else 'FSL Level 0'
			end
		end
	else 'nem 7K'
	end
from
	RendelesSap
--where (PATINDEX('%[. ]7k%' , Standard) <> 0 and PATINDEX('%API%' , Standard) <> 0)
--order by WorkingPressure
