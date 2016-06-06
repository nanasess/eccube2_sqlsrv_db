CREATE TABLE dtb_bkup (
    bkup_name varchar(64),
    bkup_memo nvarchar(max),
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (bkup_name)
);