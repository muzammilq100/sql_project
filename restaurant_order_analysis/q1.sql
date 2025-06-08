SELECT
    COUNT(order_details_id) AS order_count,
    menu_items.item_name,
    menu_items.category
FROM
    order_details
INNER JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY
    menu_items.item_name,
    menu_items.category
ORDER BY
    order_count DESC;