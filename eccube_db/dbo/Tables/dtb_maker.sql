CREATE TABLE dtb_maker (
    maker_id int NOT NULL,
    name nvarchar(max) NOT NULL,
    rank int NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (maker_id)
);