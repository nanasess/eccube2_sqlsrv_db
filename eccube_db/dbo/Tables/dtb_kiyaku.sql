CREATE TABLE [dbo].[dtb_kiyaku] (
    [kiyaku_id]    INT                NOT NULL,
    [kiyaku_title] NVARCHAR (MAX)     NOT NULL,
    [kiyaku_text]  NVARCHAR (MAX)     NOT NULL,
    [rank]         INT                DEFAULT ((0)) NOT NULL,
    [creator_id]   INT                NOT NULL,
    [create_date]  DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]  DATETIMEOFFSET (7) NOT NULL,
    [del_flg]      SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([kiyaku_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規約情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規約ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'kiyaku_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'タイトル',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'kiyaku_title'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'本文',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'kiyaku_text'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_kiyaku',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
