select 
	s.severite_name as "Severidade",
	sum(fpv.quantiy_Violation) as "Quantidade"
from 
	F_Project_Violation fpv,
	D_Release re,
	D_Severite s
where
	fpv.D_Release_idRelease = re.idRelease
	and fpv.D_Class_Violation_idSeverite = s.idSeverite
	and re.release_name = "912"
group by
	s.severite_name