/*
row_number, rank
차이점 : 예시로 가격을 row_number와 rank를 잡았을때
같은 가격이면 row_number는 순서대로 번호를 부여하는데 
rank인 경우에는 공동 1등이 가능하다.
*/

select
	*
from(
	select
		row_number() over(partition by bt.brand_id order by bt.brand_id, max(pt.price) desc) as number,
		bt.brand_id,
		bt.brand_name,
		pt.product_name,
		max(pt.price) as max_price
	from
		brand_tb bt
		inner join product_tb pt on(pt.brand_id = bt.brand_id)
	group by
		brand_id,
		pt.product_name) tbt
where
	tbt.number = 1;
    
    
select
#dense_rank 를 쓰면 공동2등이 두면이면 다음 순위가 4등이 아니라 그냥 3등, rank는 4등으로 부여
	dense_rank() over(partition by bt.brand_id order by bt.brand_id, max(stock)) as `rank`, 
	bt.brand_name,
    pt.product_name,
	max(stock) as max_stock
from
	brand_tb bt
    left outer join product_tb  pt on(pt.brand_id = bt.brand_id)
group by
	bt.brand_id,
	pt.product_name;



