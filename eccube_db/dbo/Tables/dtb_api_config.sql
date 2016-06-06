CREATE TABLE dtb_api_config (
    api_config_id int NOT NULL,
    operation_name nvarchar(max) NOT NULL,
    operation_description nvarchar(max),
    auth_types nvarchar(max) NOT NULL,
    enable smallint NOT NULL DEFAULT 0,
    is_log smallint NOT NULL DEFAULT 0,
    sub_data nvarchar(max),
    del_flg smallint NOT NULL DEFAULT 0,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (api_config_id)
);