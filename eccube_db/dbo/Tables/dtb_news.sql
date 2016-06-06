CREATE TABLE dtb_news (
    news_id int NOT NULL,
    news_date datetimeoffset,
    rank int,
    news_title nvarchar(max) NOT NULL,
    news_comment nvarchar(max),
    news_url nvarchar(max),
    news_select smallint NOT NULL DEFAULT 0,
    link_method nvarchar(max),
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (news_id)
);