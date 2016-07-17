CREATE TABLE [dbo].[dtb_member] (
    [member_id]   INT                NOT NULL,
    [name]        NVARCHAR (256)     NULL,
    [department]  NVARCHAR (256)     NULL,
    [login_id]    NVARCHAR (256)     NOT NULL,
    [password]    NVARCHAR (256)     NOT NULL,
    [salt]        NVARCHAR (256)     NOT NULL,
    [authority]   SMALLINT           NOT NULL,
    [rank]        INT                DEFAULT ((0)) NOT NULL,
    [work]        SMALLINT           DEFAULT ((1)) NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    [login_date]  DATETIMEOFFSET (7) NULL,
    PRIMARY KEY CLUSTERED ([member_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'管理者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メンバーID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'member_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名前',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'部署名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'department'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ログインID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'login_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'パスワード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'password'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'暗号化ソルト',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'salt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'権限',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'authority'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'稼動状況',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'work'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ログイン日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_member',
    @level2type = N'COLUMN',
    @level2name = N'login_date'
