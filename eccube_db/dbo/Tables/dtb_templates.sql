CREATE TABLE dtb_templates (
    template_code varchar(64) NOT NULL,
    device_type_id int NOT NULL,
    template_name nvarchar(max),
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (template_code)
);