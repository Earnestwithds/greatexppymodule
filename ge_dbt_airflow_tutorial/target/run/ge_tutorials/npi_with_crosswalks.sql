
  
  create view "ge_tutorials"."public"."npi_with_crosswalks__dbt_tmp" as (
    select 
	n.*,
	t.provider_taxonomy_description,
	s.state as state_name
from "ge_tutorials"."public"."stg_npi" n
left join "ge_tutorials"."public"."stg_taxonomy" t
	on n.taxonomy_code = t.provider_taxonomy_code
left join "ge_tutorials"."public"."stg_state_crosswalk" s
	on n.state = s.state_abbrev
  );
