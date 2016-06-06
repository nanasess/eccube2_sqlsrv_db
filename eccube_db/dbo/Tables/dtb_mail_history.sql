CREATE TABLE dtb_mail_history (
    send_id int NOT NULL,
    order_id int NOT NULL,
    send_date datetimeoffset,
    template_id int,
    creator_id int NOT NULL,
    subject nvarchar(max),
    mail_body nvarchar(max),
    PRIMARY KEY (send_id)
);