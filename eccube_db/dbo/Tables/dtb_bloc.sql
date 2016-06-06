CREATE TABLE dtb_bloc (
    device_type_id int NOT NULL,
    bloc_id int NOT NULL,
    bloc_name nvarchar(max),
    tpl_path nvarchar(max),
    filename varchar(64) NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    php_path nvarchar(max),
    deletable_flg smallint NOT NULL DEFAULT 1,
    plugin_id int,
    PRIMARY KEY (device_type_id, bloc_id),
    UNIQUE (device_type_id, filename)
);