SELECT * FROM clinic_db.doctor_tb;

insert into doctor_tb
select
	0,
	cvt.doctor_name,
    dt.department_id
from
	clinic_visit_tb cvt
    inner join department_tb dt on(dt.department_name = cvt.department)
group by
	department,
    doctor_name
order by
	doctor_name;

