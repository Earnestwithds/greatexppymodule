select 
	provider_taxonomy_description,
	state_name,
	count(distinct npi)
from "ge_tutorials"."public"."npi_with_crosswalks" n
group by 1, 2