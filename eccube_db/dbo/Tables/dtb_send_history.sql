CREATE TABLE dtb_send_history (
    send_id int NOT NULL,
    mail_method smallint,
    subject nvarchar(max),
    body nvarchar(max),
    send_count int,
    complete_count int NOT NULL DEFAULT 0,
    start_date datetimeoffset,
    end_date datetimeoffset,
    search_data nvarchar(max),
    del_flg smallint NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (send_id)
);