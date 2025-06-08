SELECT
    menu_items.category AS cuisine,
    COUNT(item_id) AS total_items_ordered,
    SUM(menu_items.price) AS total_revenue,
    COUNT(DISTINCT(menu_items.menu_item_id)) AS number_of_items_in_cuisine
FROM
    order_details
INNER JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY
    menu_items.category
ORDER BY
    total_items_ordered DESC;
