CREATE TABLE dtb_index_list (
    table_name varchar(64) NOT NULL,
    column_name varchar(64) NOT NULL,
    recommend_flg smallint NOT NULL DEFAULT 0,
    recommend_comment nvarchar(max),
    PRIMARY KEY (table_name, column_name)
);
