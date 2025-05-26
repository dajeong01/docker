# 20250522
/*
SELECT(데이터 조회)
SELECT 컬럼1, 컬럼2 FROM 테이블명;
*/

select student_name as sn, student_age as sa from student_tb where student_age > 24;
select 10 as number;
select * from (select 10 + 20 as number2, 40 as number3) as n_tb;

/* 
select 결과들을 합치는 방법(union-중복제거, union all)
제약조건
1. 컬럼의 개수가 일치해야한다 
select 30,40 union select 50,60,70; -> x
2. 테이블을 select한 결과를 합치려면 자료형도 일치해야함 
select 30,40 union select 50,'가'; -> 원래 안돼
3. 중복 있으면 없어짐 
select 10,20 union select 10,20; -> 한줄만 뜸
select 10,20 union all select 10,20; -> 두줄 뜸
*/

select 30,40 union select 50,60;
select 30,40 union select 50,'가';
select 10,20 union select 10,20;
select 10,20 union all select 10,20;

/*
join(테이블합치기)
select * from 테이블1 join 테이블2
*/

select * from 
student_tb as st1 
join 
student_tb as st2;
# 이중for문처럼 반복됨

select * from 
student_tb as st1 
inner join 
student_tb as st2 on(st2.student_id = st1.student_id + 1)
inner join 
student_tb as st3 on(st3.student_id = st2.student_id + 1); 
# 이건 9줄만 나옴 12번 id가 없기에 

select * from 
student_tb as st1 
left outer join 
student_tb as st2 on(st2.student_id = st1.student_id + 1)
left outer join 
student_tb as st3 on(st3.student_id = st2.student_id + 1); 
# 이건 11줄 나옴 대신 뒤에;     

/* 
for(int = 0; i < 10; i++){
	for(int j = 0; j < 10; i +){
		if(i == j){
		테이블 붙히기
		}
	}
}
*/

/*
서브쿼리(하위커리)
*/

select
	class_register_id,
    crt.class_id,
    ct.class_name,
    crt.student_id,
    st.student_name
from
	class_register_tb as crt
	left outer join class_tb as ct on (crt.class_id = ct.class_id)
	left outer join student_tb as st on (st.student_id = crt.student_id)
where
	st.student_name = '이서연';
	
insert into class_register_tb
values
	(default, 1, 2),
    (default, 1, 3),
    (default, 1, 4),
    (default, 2, 2),
    (default, 2, 5),
    (default, 2, 7),
    (default, 2, 9);

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
                        
/*
쿼리 성능 비교
*/
explain analyze select * from student_tb;
explain analyze select * from class_tb;