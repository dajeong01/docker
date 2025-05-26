select * from sample_products_tb;
SELECT * FROM db_study.product_tb; 

insert into product_tb
select
	0,
	spt.product_name,
    ct.category_id,
    bt.brand_id,
    st.supplier_id,
    spt.price,
    spt.stock_quantity
from
	sample_products_tb spt
    inner join category_tb ct on(ct.category_name = spt.category_name)
    inner join brand_tb bt on(bt.brand_name = spt.brand_name)
    inner join supplier_tb st on(st.supplier_name = spt.supplier_name and st.supplier_phone = spt.supplier_phone)
order by
	product_name,
    category_id,
    brand_id,
    supplier_id;
    
select
	*
from
	product_tb;



    

