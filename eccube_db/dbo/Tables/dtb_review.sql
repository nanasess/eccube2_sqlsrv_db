CREATE TABLE dtb_review (
    review_id int NOT NULL,
    product_id int NOT NULL,
    reviewer_name nvarchar(max) NOT NULL,
    reviewer_url nvarchar(max),
    sex smallint,
    customer_id int,
    recommend_level smallint NOT NULL,
    title nvarchar(max) NOT NULL,
    comment nvarchar(max) NOT NULL,
    status smallint DEFAULT 2,
    creator_id int NOT NULL,
    create_date datetimeoffset NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date datetimeoffset NOT NULL,
    del_flg smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (review_id)
);