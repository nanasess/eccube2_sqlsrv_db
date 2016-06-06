CREATE TABLE dtb_blocposition (
    device_type_id int NOT NULL,
    page_id int NOT NULL,
    target_id int NOT NULL,
    bloc_id int NOT NULL,
    bloc_row int,
    anywhere smallint DEFAULT 0 NOT NULL,
    PRIMARY KEY (device_type_id, page_id, target_id, bloc_id)
);