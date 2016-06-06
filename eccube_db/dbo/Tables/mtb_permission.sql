CREATE TABLE mtb_permission (
    id varchar(64),
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);