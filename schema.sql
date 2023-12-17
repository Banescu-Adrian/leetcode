CREATE TABLE product (
    product_id int NOT NULL,
    product_name varchar(255) NOT NULL,
    unit_price int NOT NULL,
    PRIMARY KEY (product_id),
    UNIQUE (product_id),
);

CREATE TABLE sales (
    seller_id int NOT NULL,
    product_id int NOT NULL,
    buyer_id int NOT NULL,
    sale_date date NOT NULL,
    quantity int NOT NULL,
    price int NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product (product_id)
);