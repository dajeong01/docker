/*
조건 연산자
*/
select
	*
from
	product_tb
where
	price > 500000
    and stock > 400;
    
select
	*
from
	product_tb
where
	brand_id in (select brand_id from brand_tb where brand_id < 3)
order by
	brand_id;
    
select
	*
from
	product_tb
where
	brand_id in (select brand_id from brand_tb where brand_name in ('LG','다이소'));
    
select
	*
from
	product_tb
where
	price between 100000 and 200000;	# 100000 < x < 200000

select 
	*
from
	(select
		product_name,
		stock,
		if (stock = 0, '부족',NULL) as stock_status
	from
		product_tb) tpt
where 
	stock_status = '부족';
    # stock_status is NULL;			
    # NULL일때만 is 쓰기 , 부정을 쓰고싶을때 is not 쓰기 , not 만 쓰고싶을때는 제일 

/*
like 연산자(와일드카드 %, _)
*/

select
	*
from
	product_tb
where 
	product_name like '%강력한%';
    
select
	*
from
	product_tb
where 
	product_name like '___책상';
    
    
select
	*
from
	supplier_tb
where 
    supplier_name like '%이'
    or supplier_name like '%김';

select
		*
from
	supplier_tb
where
	supplier_name in('양김','유한회사 이');
    

    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
