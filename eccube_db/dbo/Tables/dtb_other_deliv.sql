CREATE TABLE dtb_other_deliv (
    other_deliv_id int NOT NULL,
    customer_id int NOT NULL,
    name01 nvarchar(max),
    name02 nvarchar(max),
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
    tel01 nvarchar(max),
    tel02 nvarchar(max),
    tel03 nvarchar(max),
    fax01 nvarchar(max),
    fax02 nvarchar(max),
    fax03 nvarchar(max)
    PRIMARY KEY (other_deliv_id)
);