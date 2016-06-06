﻿CREATE TABLE dtb_customer (
    customer_id int NOT NULL,
    name01 nvarchar(max) NOT NULL,
    name02 nvarchar(max) NOT NULL,
    kana01 nvarchar(max),
    kana02 nvarchar(max),
    company_name nvarchar(max),
    zip01 nvarchar(max),
    zip02 nvarchar(max),
    zipcode nvarchar(max),
    country_id int,
    pref smallint,
    addr01 nvarchar(max),
    addr02 nvarchar(max),
    email nvarchar(max) NOT NULL,
    email_mobile nvarchar(max),
    tel01 nvarchar(max),
    tel02 nvarchar(max),
    tel03 nvarchar(max),
    fax01 nvarchar(max),
    fax02 nvarchar(max),
    fax03 nvarchar(max),
    sex smallint,
    job smallint,
    birth datetimeoffset,
    password nvarchar(max),
    reminder smallint,
    reminder_answer nvarchar(max),
    salt nvarchar(max),
    secret_key varchar(64) NOT NULL,
    first_buy_date datetimeoffset,
    last_buy_date datetimeoffset,
    buy_times numeric(9) DEFAULT 0,
    buy_total numeric(9) DEFAULT 0,
    point numeric(9) NOT NULL DEFAULT 0,
    note nvarchar(max),
    status smallint NOT NULL DEFAULT 1,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    mobile_phone_id nvarchar(max),
    mailmaga_flg smallint,
    PRIMARY KEY (customer_id),
    UNIQUE (secret_key)
);