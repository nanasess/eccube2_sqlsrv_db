CREATE TABLE dtb_holiday (
    holiday_id int NOT NULL,
    title nvarchar(max) NOT NULL,
    month smallint NOT NULL,
    day smallint NOT NULL,
    rank int NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (holiday_id)
);