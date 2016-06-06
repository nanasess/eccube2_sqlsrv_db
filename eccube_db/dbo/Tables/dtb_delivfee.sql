CREATE TABLE dtb_delivfee (
    deliv_id int NOT NULL,
    fee_id int NOT NULL,
    fee numeric(9) NOT NULL,
    pref smallint,
    PRIMARY KEY (deliv_id, fee_id)
);