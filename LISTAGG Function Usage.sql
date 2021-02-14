SELECT LISTAGG(product_name, ', ') WITHIN GROUP (ORDER BY product_name DESC) "Product_Listing"
FROM products;

/*
product_id	product_name
1001	Bananas
1002	Apples
1003	Pears
1004	Oranges

Product_Listing
Pears, Oranges, Bananas, Apples

*/