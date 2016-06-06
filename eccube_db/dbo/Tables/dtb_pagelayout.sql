CREATE TABLE dtb_pagelayout (
    device_type_id int NOT NULL,
    page_id int NOT NULL,
    page_name nvarchar(max),
    url nvarchar(max) NOT NULL,
    filename nvarchar(max),
    header_chk smallint DEFAULT 1,
    footer_chk smallint DEFAULT 1,
    edit_flg smallint DEFAULT 1,
    author nvarchar(max),
    description nvarchar(max),
    keyword nvarchar(max),
    update_url nvarchar(max),
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    meta_robots nvarchar(max),
    PRIMARY KEY (device_type_id, page_id)
);