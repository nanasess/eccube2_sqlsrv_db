CREATE TABLE dtb_send_customer (
    customer_id int NOT NULL,
    send_id int NOT NULL,
    email nvarchar(max),
    name nvarchar(max),
    send_flag smallint,
    PRIMARY KEY (send_id, customer_id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メルマガ送信会員',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_customer',
    @level2type = NULL,
    @level2name = NULL
