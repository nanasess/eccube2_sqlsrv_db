CREATE TABLE dtb_module (
    module_id int NOT NULL UNIQUE,
    module_code nvarchar(max) NOT NULL,
    module_name nvarchar(max) NOT NULL,
    sub_data nvarchar(max),
    auto_update_flg smallint NOT NULL DEFAULT 0,
    del_flg smallint NOT NULL DEFAULT 0,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY(module_id)
);