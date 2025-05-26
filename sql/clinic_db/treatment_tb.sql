SELECT * FROM clinic_db.treatment_tb;

insert into treatment_tb
select
	distinct
	0,
	treatment
from
	clinic_visit_tb
order by
	treatment;
    