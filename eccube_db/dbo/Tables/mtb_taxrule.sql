CREATE TABLE mtb_taxrule (
    id smallint,
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);