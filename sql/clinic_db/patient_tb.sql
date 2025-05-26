SELECT * FROM clinic_db.patient_tb;

insert into patient_tb
select
	0,
	patient_name,
    if(gender = '남', 1, 2) as gender,
    birth_date
from
	clinic_visit_tb
group by
	patient_name,
    gender,
    birth_date
order by
	patient_name;