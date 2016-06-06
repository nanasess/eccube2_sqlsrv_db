CREATE TABLE dtb_member (
    member_id int NOT NULL,
    name nvarchar(max),
    department nvarchar(max),
    login_id nvarchar(max) NOT NULL,
    password nvarchar(max) NOT NULL,
    salt nvarchar(max) NOT NULL,
    authority smallint NOT NULL,
    rank int NOT NULL DEFAULT 0,
    work smallint NOT NULL DEFAULT 1,
    del_flg smallint NOT NULL DEFAULT 0,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    login_date datetimeoffset,
    PRIMARY KEY (member_id)
);