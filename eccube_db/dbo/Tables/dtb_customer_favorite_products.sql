CREATE TABLE dtb_customer_favorite_products (
    customer_id int NOT NULL,
    product_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (customer_id, product_id)
);