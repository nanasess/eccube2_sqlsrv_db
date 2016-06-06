CREATE TABLE dtb_shipment_item (
    shipping_id int NOT NULL,
    product_class_id int NOT NULL,
    order_id int NOT NULL,
    product_name nvarchar(max) NOT NULL,
    product_code nvarchar(64),
    classcategory_name1 nvarchar(max),
    classcategory_name2 nvarchar(max),
    price numeric(9),
    quantity numeric(9),
    PRIMARY KEY (shipping_id, product_class_id, order_id)
);