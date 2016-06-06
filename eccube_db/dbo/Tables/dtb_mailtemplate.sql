CREATE TABLE dtb_mailtemplate (
    template_id int NOT NULL,
    subject nvarchar(max),
    header nvarchar(max),
    footer nvarchar(max),
    creator_id int NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (template_id)
);