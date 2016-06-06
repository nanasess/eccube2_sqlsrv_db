CREATE TABLE [dbo].[dtb_classcategory] (
    [classcategory_id] INT                NOT NULL,
    [name]             NVARCHAR (MAX)     NULL,
    [class_id]         INT                NOT NULL,
    [rank]             INT                NULL,
    [creator_id]       INT                NOT NULL,
    [create_date]      DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]      DATETIMEOFFSET (7) NOT NULL,
    [del_flg]          SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([classcategory_id] ASC),
    CONSTRAINT [FK_dtb_classcategory_dtb_class] FOREIGN KEY ([class_id]) REFERENCES [dbo].[dtb_class] ([class_id])
);


GO
ALTER TABLE [dbo].[dtb_classcategory] NOCHECK CONSTRAINT [FK_dtb_classcategory_dtb_class];

