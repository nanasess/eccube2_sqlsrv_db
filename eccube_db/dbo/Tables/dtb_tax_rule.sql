CREATE TABLE [dbo].[dtb_tax_rule] (
    [tax_rule_id]      INT                NOT NULL,
    [country_id]       INT                DEFAULT ((0)) NOT NULL,
    [pref_id]          INT                DEFAULT ((0)) NOT NULL,
    [product_id]       INT                DEFAULT ((0)) NOT NULL,
    [product_class_id] INT                DEFAULT ((0)) NOT NULL,
    [calc_rule]        SMALLINT           DEFAULT ((1)) NOT NULL,
    [tax_rate]         NUMERIC (9)        DEFAULT ((8)) NOT NULL,
    [tax_adjust]       NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [apply_date]       DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [member_id]        INT                NOT NULL,
    [del_flg]          SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]      DATETIMEOFFSET (7) NOT NULL,
    [update_date]      DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([tax_rule_id] ASC)
);

