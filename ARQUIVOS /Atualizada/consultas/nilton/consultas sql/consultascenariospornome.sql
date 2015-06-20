select 
	dsc.scenario_name,
	sum(fsc.quantity_Scenario)
from
	F_Scenario_Class fsc,
	D_Release re,
	D_Scenario_Clean_Code dsc
where
	fsc.D_Scenario_Clean_Code_idScenario = dsc.idScenario
	and re.idRelease = fsc.D_Release_idRelease
	and re.release_name = "912"
group by
	dsc.scenario_name