/*
UPDATE (데이터 수정)
UPDATE 테이블명 SET 컬럼1  = 수정값, 컬럼2 = 수정값 WHERE 조건
*/

update class_tb ct
	-- left outer join class_register_tb crt on(crt.class_id = ct.class_id)
set 
	class_name = 'java 고급'
where 
	class_id = 1;
