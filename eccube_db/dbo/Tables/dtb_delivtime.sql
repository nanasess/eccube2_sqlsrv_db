CREATE TABLE dtb_delivtime (
    deliv_id int NOT NULL,
    time_id int NOT NULL,
    deliv_time nvarchar(max) NOT NULL,
    PRIMARY KEY (deliv_id, time_id)
);