use source_info;

select 
	t.type_category,
	p.priority_name as "Prioridade", -- Para alterar o nome da coluna basta alterar a string entre aspas
	sum(fpb.quantiy_Bug) as "Quantidade"
from 
	F_Project_Bug fpb,
	D_Priority p,
	D_Release re,
	D_Type t
where	
	fpb.D_Class_Bug_idPriority = p.idPriority
	and re.idRelease = fpb.D_Release_idRelease
	and fpb.D_Class_Bug_idType = t.idType
	and re.release_name = "968" -- Colocar o parametro com a release desejada aqui
group by 
	t.type_category,
	p.priority_name