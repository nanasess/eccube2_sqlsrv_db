CREATE TABLE dtb_send_customer (
    customer_id int NOT NULL,
    send_id int NOT NULL,
    email nvarchar(max),
    name nvarchar(max),
    send_flag smallint,
    PRIMARY KEY (send_id, customer_id)
);