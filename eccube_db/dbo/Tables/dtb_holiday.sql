CREATE TABLE [dbo].[dtb_holiday] (
    [holiday_id]  INT                NOT NULL,
    [title]       NVARCHAR (256)     NOT NULL,
    [month]       SMALLINT           NOT NULL,
    [day]         SMALLINT           NOT NULL,
    [rank]        INT                DEFAULT ((0)) NOT NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([holiday_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'定休日情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'定休日ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'holiday_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'タイトル',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'title'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'月',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'month'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'日',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'day'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_holiday',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
