CREATE TABLE dtb_category (
    category_id int NOT NULL,
    category_name nvarchar(max),
    parent_category_id int NOT NULL DEFAULT 0,
    level int NOT NULL,
    rank int,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (category_id)
);