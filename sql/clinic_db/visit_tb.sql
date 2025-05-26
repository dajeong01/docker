SELECT * FROM clinic_db.visit_tb;

insert into visit_tb
select
	0,
	pt.patient_id,
    dt.doctor_id,
    tt.treatment_id,
    cvt.visit_date,
    cvt.fee
from
	clinic_visit_tb cvt
    inner join patient_tb pt on (
		pt.patient_name= cvt.patient_name 
        and if(pt.gender = 1, '남','여') = cvt.gender
        and pt.birth_date = cvt.birth_date)
	inner join department_tb dpt on(dpt.department_name = cvt.department)
    inner join doctor_tb dt on(
		dt.doctor_name = cvt.doctor_name and dt.department_id = dpt.department_id)
	inner join treatment_tb tt on(tt.treatment_name = cvt.treatment)
order by
	visit_date