CREATE TABLE [dbo].[dtb_csv] (
    [no]                     INT                NOT NULL,
    [csv_id]                 INT                NOT NULL,
    [col]                    NVARCHAR (MAX)     NULL,
    [disp_name]              NVARCHAR (MAX)     NULL,
    [rank]                   INT                NULL,
    [rw_flg]                 SMALLINT           DEFAULT ((1)) NULL,
    [status]                 SMALLINT           DEFAULT ((1)) NOT NULL,
    [create_date]            DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]            DATETIMEOFFSET (7) NOT NULL,
    [mb_convert_kana_option] NVARCHAR (MAX)     NULL,
    [size_const_type]        NVARCHAR (MAX)     NULL,
    [error_check_types]      NVARCHAR (MAX)     NULL,
    PRIMARY KEY CLUSTERED ([no] ASC)
);

