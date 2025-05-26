select * from brand_tb;

insert into brand_tb(brand_name)
select
	brand_name
from
	sample_products_tb
group by
	brand_name
order by 
	brand_name;

