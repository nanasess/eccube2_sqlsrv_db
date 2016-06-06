CREATE TABLE dtb_mailmaga_template (
    template_id int NOT NULL,
    subject nvarchar(max),
    mail_method int,
    body nvarchar(max),
    del_flg smallint NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (template_id)
);