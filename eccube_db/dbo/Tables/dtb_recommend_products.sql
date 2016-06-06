CREATE TABLE dtb_recommend_products (
    product_id int NOT NULL,
    recommend_product_id int NOT NULL,
    rank int NOT NULL,
    comment nvarchar(max),
    status smallint NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY(product_id)
);