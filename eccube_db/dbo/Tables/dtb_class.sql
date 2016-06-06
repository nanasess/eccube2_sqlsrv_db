CREATE TABLE dtb_class (
    class_id int NOT NULL,
    name nvarchar(max),
    rank int,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (class_id)
);