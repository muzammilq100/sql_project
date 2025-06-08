WITH top_orders AS (
    SELECT
        order_id,
        SUM(menu_items.price) AS total_order_spent
    FROM
        order_details
    INNER JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
    GROUP BY
        order_id
    ORDER BY
        total_order_spent DESC
    LIMIT
        5
)
SELECT
top_orders.order_id,
menu_items.item_name,
menu_items.price,
top_orders.total_order_spent
FROM
    order_details
INNER JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
INNER JOIN top_orders ON order_details.order_id = top_orders.order_id
ORDER BY
    top_orders.total_order_spent DESC;
