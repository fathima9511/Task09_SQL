
SELECT * FROM production.products

SELECT product_name FROM production.products

SELECT product_id, product_name FROM production.products

SELECT product_id AS [Product ID], product_name AS [Product Name] FROM production.products

SELECT DISTINCT product_id AS [Product ID], product_name AS [Product Name] FROM production.products

SELECT TOP (20) * FROM production.products

SELECT * FROM production.products 
WHERE product_name = 'Surly Wednesday Frameset - 2016'

SELECT * FROM production.products 
WHERE product_name != 'Surly Wednesday Frameset - 2016'

SELECT * FROM production.products 
WHERE product_name = 'Surly Wednesday Frameset - 2016' OR product_name = 'Electra Townie Original 21D - 2016'

SELECT * FROM production.products 
WHERE product_name IN ('Surly Wednesday Frameset - 2016' , 'Electra Townie Original 21D - 2016' , 'Trek Conduit+ - 2016')

SELECT * FROM production.products 
WHERE product_name NOT IN ('Surly Wednesday Frameset - 2016' , 'Electra Townie Original 21D - 2016' , 'Trek Conduit+ - 2016')

SELECT * FROM production.products 
WHERE product_name = 'Electra Townie Original 21D - 2016' AND category_id = '2'

SELECT * FROM production.products 
WHERE product_name = 'Electra Townie Original 21D - 2016' AND category_id = '2' OR category_id = '6'

SELECT * FROM production.products 
WHERE product_name LIKE 'S%'

SELECT * FROM production.products 
WHERE product_name NOT LIKE 'S%'

SELECT TOP (1000) [product_id]
      ,[product_name]
      ,[brand_id]
      ,[category_id]
      ,[model_year]
      ,[list_price]
  FROM [BikeStores].[production].[products]
  WHERE list_price <= 1000


  SELECT TOP (1000) [product_id]
      ,[product_name]
      ,[brand_id]
      ,[category_id]
      ,[model_year]
      ,[list_price]
  FROM [BikeStores].[production].[products]
  WHERE list_price between 1000 and 2000


  SELECT product_id,
         product_name,
         category_id,
         model_year,
         list_price,
	     brand_name
  FROM production.products P
  JOIN production.brands b ON p.brand_id = b.brand_id


  SELECT product_id,
         product_name,
         category_id,
         model_year,
         list_price,
	     brand_name
  FROM production.products P
  RIGHT OUTER JOIN production.brands b ON p.brand_id = b.brand_id


    SELECT product_id,
         product_name,
         category_id,
         model_year,
         list_price,
	     brand_name
  FROM production.products P
  LEFT OUTER JOIN production.brands b ON p.brand_id = b.brand_id


    SELECT product_id,
         product_name,
         category_id,
         model_year,
         list_price,
	     brand_name
  FROM production.products P
  LEFT OUTER JOIN production.brands b ON p.brand_id = b.brand_id
  ORDER BY list_price ASC

  SELECT * FROM production.products
  WHERE  model_year >= '2018'

  
  SELECT COUNT(*) FROM production.products
  WHERE  model_year >= '2018'

  SELECT SUM(model_year) FROM production.products
  WHERE  model_year >= '2018'


 