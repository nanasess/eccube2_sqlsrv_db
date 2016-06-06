CREATE TABLE [dbo].[dtb_class] (
    [class_id]    INT                NOT NULL,
    [name]        NVARCHAR (MAX)     NULL,
    [rank]        INT                NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([class_id] ASC)
);

