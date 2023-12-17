SET @start_date := '2019-01-01';
SET @end_date := '2019-03-31';

SELECT
    product.product_id,
    product.product_name
FROM
    product
    INNER JOIN sales on product.product_id = sales.product_id
    AND sales.sale_date BETWEEN @start_date AND @end_date
    AND sales.product_id NOT IN (
        SELECT
            sales.product_id
        FROM
            sales
        WHERE
            sales.sale_date > @end_date
        OR sales.sale_date < @start_date
        GROUP BY
            sales.product_id
    );