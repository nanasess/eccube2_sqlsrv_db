CREATE TABLE dtb_csv_sql (
    sql_id int,
    sql_name nvarchar(max) NOT NULL,
    csv_sql nvarchar(max),
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    PRIMARY KEY (sql_id)
);