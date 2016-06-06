CREATE TABLE dtb_maker_count (
    maker_id int NOT NULL,
    product_count int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (maker_id)
);