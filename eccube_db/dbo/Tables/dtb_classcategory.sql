CREATE TABLE dtb_classcategory (
    classcategory_id int NOT NULL,
    name nvarchar(max),
    class_id int NOT NULL,
    rank int,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (classcategory_id)
);