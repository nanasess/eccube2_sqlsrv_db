CREATE TABLE mtb_constants (
    id varchar(64),
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    remarks nvarchar(max),
    PRIMARY KEY (id)
);