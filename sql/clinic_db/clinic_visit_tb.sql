SELECT * FROM clinic_db.clinic_visit_tb;

select 
	vt.visit_id,
    pt.patient_name,
    if(pt.gender = 1, '남','여') as gender,
    pt.birth_date,
    dpt.department_name,
    dt.doctor_name,
    tt.treatment_name,
    vt.visit_date,
    vt.fee
from
	visit_tb vt
	left outer join patient_tb pt on(pt.patient_id = vt.patient_id)
    left outer join doctor_tb dt on(dt.doctor_id = vt.doctor_id)
    left outer join department_tb dpt on(dpt.department_id = dt.department_id)
	left outer join treatment_tb tt on(tt.treatment_id = vt.treatment_id)