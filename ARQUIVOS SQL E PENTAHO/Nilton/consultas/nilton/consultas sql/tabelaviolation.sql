select
	dcv.violation_file_class,
	r.rule_set as "Tipo",
	r.rule_name as "Nome",
	dcv.violation_line_class as "Linha"
	
from 
	F_Project_Violation fpv,
	D_Release re,
	D_Severite s,
	D_Rules r,
	D_Class_Violation dcv
where
	fpv.D_Release_idRelease = re.idRelease
	and fpv.D_Class_Violation_idSeverite = s.idSeverite
	and fpv.D_Class_Violation_idRules = r.idRules
	and dcv.idClass_violation = fpv.D_Class_Violation_idClass_violation
	and re.release_name = "912"
