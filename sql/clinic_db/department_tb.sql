SELECT * FROM clinic_db.department_tb;

insert into department_tb
select
	0,
    department
from
	clinic_visit_tb cvt
group by
	department
order by
	department;