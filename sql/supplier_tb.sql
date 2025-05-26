select * from supplier_tb;

insert into supplier_tb(supplier_name, supplier_phone)
select
    supplier_name,
    supplier_phone
from
	sample_products_tb 
group by
	supplier_name,
    supplier_phone
order by
	supplier_name,
    supplier_phone;


