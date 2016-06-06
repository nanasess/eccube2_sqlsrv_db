CREATE TABLE dtb_update (
    module_id int NOT NULL,
    module_name nvarchar(max) NOT NULL,
    now_version nvarchar(max),
    latest_version nvarchar(max) NOT NULL,
    module_explain nvarchar(max),
    main_php nvarchar(max) NOT NULL,
    extern_php nvarchar(max) NOT NULL,
    install_sql nvarchar(max),
    uninstall_sql nvarchar(max),
    other_files nvarchar(max),
    del_flg smallint NOT NULL DEFAULT 0,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    release_date datetimeoffset NOT NULL,
    PRIMARY KEY (module_id)
);