select * from sample_products_tb;

/*
정규화(중복제거) 
중복제거 방법
1. distinct(행의 조합 데이터가 동일한 행을 제거해줌)
2. group by(select절이랑 상관없이 group by절에서 컬럼을 선택하여 중복제거.)

select 실행 순서
1. from 	-> 데이터가 존재하는데 테이블을 조회하거나 조인을 하는 역할
2. on 		-> 조인이 있는 경우 조인 조건을 평가
3. join 	-> on 조건에 해당하는 데이터를 결합하는 역할
4. where	-> from에서 조회할 데이터의 조건을 평가
5. group by -> 조회된 결과에서 명시된 컬럼끼리 그룹핑을 하는 역할
6. having 	-> 그룹핑된 결과에서 데이터의 조건을 평가
7. select	-> 최종 출력할 컬럼을 선택하는 역할
8. distinct	-> select에서 선택한 컬럼의 조합결과에서 중복 행 제거
9. order by	-> 최종 select 결과를 오름차순(ASC) 또는 내림차순(DESC)으로 정렬하는 역할
10. limit 	-> 최종 select 결과의 행 개수를 제한할 수 있음
*/

select 
	distinct 			# 중복제거
	category_name
from
	sample_products_tb
order by				# 오름차순
	category_name;		# desc -> 내림차순 (오름차순은 asc가 생략되어있는거)
    
select
	category_name,
    count(category_name) as count	# 가구별로 묶음
from
	sample_products_tb
group by
	category_name
having 
	category_name = '가구'
order by
	category_name;

insert into category_tb 		# insert select 문
select
	0,							# category_id 에 0을 넣는 방법
	category_name
from
	sample_products_tb
group by
	category_name
order by
	category_name;
    
insert into category_tb(category_name) 		# category_name에만 값을 주면 알아서 id에 auto로 생기는 구조
select
	category_name
from
	sample_products_tb
group by
	category_name
order by
	category_name;
    
    

    