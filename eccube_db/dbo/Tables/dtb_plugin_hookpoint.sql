CREATE TABLE dtb_plugin_hookpoint (
    plugin_hookpoint_id int NOT NULL,
    plugin_id int NOT NULL,
    callback nvarchar(max),
    use_flg smallint NOT NULL DEFAULT 1,
    hook_point nvarchar(max) NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (plugin_hookpoint_id)
);