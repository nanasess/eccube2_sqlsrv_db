create table dtb_module_update_logs(
    log_id int NOT NULL,
    module_id int NOT NULL,
    buckup_path nvarchar(max),
    error_flg smallint DEFAULT 0,
    error nvarchar(max),
    ok nvarchar(max),
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (log_id)
);