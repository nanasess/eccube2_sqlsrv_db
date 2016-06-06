CREATE TABLE dtb_order_detail (
    order_detail_id int NOT NULL,
    order_id int NOT NULL,
    product_id int NOT NULL,
    product_class_id int NOT NULL,
    product_name nvarchar(max) NOT NULL,
    product_code nvarchar(64),
    classcategory_name1 nvarchar(max),
    classcategory_name2 nvarchar(max),
    price numeric(9),
    quantity numeric(9),
    point_rate numeric(9) NOT NULL DEFAULT 0,
    tax_rate numeric(9),
    tax_rule smallint,
    PRIMARY KEY (order_detail_id)
);