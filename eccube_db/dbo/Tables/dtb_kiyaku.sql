CREATE TABLE dtb_kiyaku (
    kiyaku_id int NOT NULL,
    kiyaku_title nvarchar(max) NOT NULL,
    kiyaku_text nvarchar(max) NOT NULL,
    rank int NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (kiyaku_id)
);