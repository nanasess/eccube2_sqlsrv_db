CREATE TABLE dtb_product_categories (
    product_id int NOT NULL,
    category_id int NOT NULL,
    rank int NOT NULL,
    PRIMARY KEY(product_id, category_id)
);