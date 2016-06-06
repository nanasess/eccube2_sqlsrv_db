CREATE TABLE dtb_tax_rule (
    tax_rule_id int NOT NULL,
    country_id int NOT NULL DEFAULT 0,
    pref_id int NOT NULL DEFAULT 0,
    product_id int NOT NULL DEFAULT 0,
    product_class_id int NOT NULL DEFAULT 0,
    calc_rule smallint NOT NULL DEFAULT 1,
    tax_rate numeric(9) NOT NULL DEFAULT 8,
    tax_adjust numeric(9) NOT NULL DEFAULT 0,
    apply_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
	member_id int NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    create_date datetimeoffset NOT NULL,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (tax_rule_id)
);