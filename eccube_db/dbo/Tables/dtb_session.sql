CREATE TABLE dtb_session (
    sess_id varchar(64) NOT NULL,
    sess_data nvarchar(max),
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (sess_id)
);