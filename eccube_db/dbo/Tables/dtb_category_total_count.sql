CREATE TABLE dtb_category_total_count (
    category_id int NOT NULL,
    product_count int,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (category_id)
);