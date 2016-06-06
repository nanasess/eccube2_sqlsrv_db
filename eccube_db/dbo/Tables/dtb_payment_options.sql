CREATE TABLE dtb_payment_options (
    deliv_id int NOT NULL,
    payment_id int NOT NULL,
    rank int,
    PRIMARY KEY (deliv_id, payment_id)
);