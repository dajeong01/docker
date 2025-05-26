/*
Limit (행의 개수를 제한)
*/

select
	*
from
	product_tb
limit 4,10;		
# index(4)번부터 10개 =>  product_id 5번부터 14번까지 => 인덱스랑 id값이랑 헷갈리지않기