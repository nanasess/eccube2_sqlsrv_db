CREATE TABLE dtb_product_status (
    product_status_id smallint NOT NULL,
    product_id int NOT NULL,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (product_status_id, product_id)
);