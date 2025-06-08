SELECT
    CONCAT(EXTRACT(HOUR FROM order_time::TIME), ':00 - ', EXTRACT(HOUR FROM order_time::TIME) + 1, ':00') AS time_range,
    COUNT(order_id) AS order_count
FROM
    order_details
GROUP BY
    EXTRACT(HOUR FROM order_time::TIME)
ORDER BY
    order_count DESC;