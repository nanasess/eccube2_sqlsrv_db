﻿CREATE TABLE mtb_reminder (
    id smallint,
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);