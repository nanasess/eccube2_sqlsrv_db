CREATE TABLE [dbo].[dtb_api_account] (
    [api_account_id] INT                NOT NULL,
    [api_access_key] NVARCHAR (MAX)     NOT NULL,
    [api_secret_key] NVARCHAR (MAX)     NOT NULL,
    [enable]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [del_flg]        SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([api_account_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'APIアカウント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'APIアカウントID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = N'COLUMN',
    @level2name = N'api_account_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'アクセスキー',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = N'COLUMN',
    @level2name = N'api_access_key'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'シークレットキー',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = N'COLUMN',
    @level2name = N'api_secret_key'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'有効フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = N'COLUMN',
    @level2name = N'enable'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_account',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
