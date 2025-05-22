package mysql;
/*
- SELECT
SELECT(데이터 조회)
SELECT 컬럼1, 컬럼2 FROM 테이블명;

select 결과들을 합치는 방법(union-중복제거, union all)
제약조건
1. 컬럼의 개수가 일치해야한다
select 30,40 union select 50,60,70; -> x
2. 테이블을 select한 결과를 합치려면 자료형도 일치해야함
select 30,40 union select 50,'가'; -> 원래 안돼
3. 중복 있으면 없어짐
select 10,20 union select 10,20; -> 한줄만 뜸
select 10,20 union all select 10,20; -> 두줄 뜸

join(테이블합치기)
select * from 테이블1 join 테이블2

for(int = 0; i < 10; i++){
	for(int j = 0; j < 10; i +){
		if(i == j){
		테이블 붙히기
		}
	}
}

ex)
select
	 crt.class_id,
     (select class_name from class_tb ct where ct.class_id = crt.class_id) as class_name
from
	class_register_tb crt
where
	student_id = (select
						student_id
					from
						student_tb
					where
						student_name = '이서연');
*/

public class Select_0522 {
}
