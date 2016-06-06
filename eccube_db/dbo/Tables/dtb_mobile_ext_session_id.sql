CREATE TABLE dtb_mobile_ext_session_id (
    session_id varchar(64) NOT NULL,
    param_key nvarchar(max),
    param_value nvarchar(max),
    url nvarchar(max),
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (session_id)
);