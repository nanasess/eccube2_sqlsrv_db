CREATE TABLE dtb_best_products (
    best_id int NOT NULL,
    category_id int NOT NULL,
    rank int NOT NULL DEFAULT 0,
    product_id int NOT NULL,
    title nvarchar(max),
    comment nvarchar(max),
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (best_id)
);