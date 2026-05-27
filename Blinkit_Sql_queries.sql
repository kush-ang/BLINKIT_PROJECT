create database blinkit_db;

SELECT 
    COUNT(*) AS total_products
FROM
    products;

-- Catagory wise product count - dairy & breakfast are at top

SELECT 
    category, COUNT(*) AS total_items
FROM
    products
GROUP BY category
ORDER BY total_items DESC;

-- Top 5 most expensive products - Vitamins in pharmacy category is the most expensive products
SELECT 
    product_name, price, category
FROM
    products
ORDER BY price DESC
LIMIT 5;


-- Total Revenue - 4972415.43 /-

SELECT 
    ROUND(SUM(quantity * unit_price), 2)
FROM
    order_items;

-- Revenue by Category - dairy & breakfast is at top and pharmacy is at second position.
SELECT 
    products.category,
    ROUND(SUM(order_items.quantity * order_items.unit_price),
            2) AS category_revenue
FROM
    order_items
        JOIN
    products ON order_items.product_id = products.product_id
GROUP BY products.category
ORDER BY category_revenue DESC;

-- Monthly Sales Trend - (August , May , oct , sep)


SELECT 
    MONTHNAME(orders.order_date) AS month_name,
    ROUND(SUM(order_items.quantity * order_items.unit_price),
            2) AS monthly_revenue
FROM
    order_items
        JOIN
    orders ON order_items.order_id = orders.order_id
GROUP BY MONTHNAME(orders.order_date) , MONTH(orders.order_date)
ORDER BY MONTH(orders.order_date);


-- Most Preferred Payment Methods

SELECT 
    payment_method, COUNT(order_id) AS total_orders
FROM
    orders
GROUP BY payment_method
ORDER BY total_orders DESC;










