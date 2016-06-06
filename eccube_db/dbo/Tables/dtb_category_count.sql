CREATE TABLE dtb_category_count (
    category_id int NOT NULL,
    product_count int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (category_id)
);