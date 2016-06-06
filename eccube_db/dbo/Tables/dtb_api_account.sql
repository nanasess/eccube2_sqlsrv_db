CREATE TABLE dtb_api_account (
    api_account_id int NOT NULL,
    api_access_key nvarchar(max) NOT NULL,
    api_secret_key nvarchar(max) NOT NULL,
    enable smallint NOT NULL DEFAULT 0,
    del_flg smallint NOT NULL DEFAULT 0,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (api_account_id)
);