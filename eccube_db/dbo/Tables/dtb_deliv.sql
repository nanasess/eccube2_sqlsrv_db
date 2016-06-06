CREATE TABLE dtb_deliv (
    deliv_id int NOT NULL,
    product_type_id int,
    name nvarchar(max),
    service_name nvarchar(max),
    remark nvarchar(max),
    confirm_url nvarchar(max),
    rank int,
    status smallint NOT NULL DEFAULT 1,
    del_flg smallint NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (deliv_id)
);