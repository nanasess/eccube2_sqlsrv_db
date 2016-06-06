CREATE TABLE mtb_mail_tpl_path (
    id smallint,
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);