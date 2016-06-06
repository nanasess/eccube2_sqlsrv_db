CREATE TABLE dtb_csv (
    no int,
    csv_id int NOT NULL,
    col nvarchar(max),
    disp_name nvarchar(max),
    rank int,
    rw_flg smallint DEFAULT 1,
    status smallint NOT NULL DEFAULT 1,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    mb_convert_kana_option nvarchar(max),
    size_const_type nvarchar(max),
    error_check_types nvarchar(max),
    PRIMARY KEY (no)
);