CREATE TABLE dtb_baseinfo (
    id smallint,
    company_name nvarchar(max),
    company_kana nvarchar(max),
    zip01 nvarchar(max),
    zip02 nvarchar(max),
    zipcode nvarchar(max),
    country_id int,
    pref smallint,
    addr01 nvarchar(max),
    addr02 nvarchar(max),
    tel01 nvarchar(max),
    tel02 nvarchar(max),
    tel03 nvarchar(max),
    fax01 nvarchar(max),
    fax02 nvarchar(max),
    fax03 nvarchar(max),
    business_hour nvarchar(max),
    law_company nvarchar(max),
    law_manager nvarchar(max),
    law_zip01 nvarchar(max),
    law_zip02 nvarchar(max),
    law_zipcode nvarchar(max),
    law_country_id int,
    law_pref smallint,
    law_addr01 nvarchar(max),
    law_addr02 nvarchar(max),
    law_tel01 nvarchar(max),
    law_tel02 nvarchar(max),
    law_tel03 nvarchar(max),
    law_fax01 nvarchar(max),
    law_fax02 nvarchar(max),
    law_fax03 nvarchar(max),
    law_email nvarchar(max),
    law_url nvarchar(max),
    law_term01 nvarchar(max),
    law_term02 nvarchar(max),
    law_term03 nvarchar(max),
    law_term04 nvarchar(max),
    law_term05 nvarchar(max),
    law_term06 nvarchar(max),
    law_term07 nvarchar(max),
    law_term08 nvarchar(max),
    law_term09 nvarchar(max),
    law_term10 nvarchar(max),
    email01 nvarchar(max),
    email02 nvarchar(max),
    email03 nvarchar(max),
    email04 nvarchar(max),
    free_rule numeric(9),
    shop_name nvarchar(max),
    shop_kana nvarchar(max),
    shop_name_eng nvarchar(max),
    point_rate numeric(9) NOT NULL DEFAULT 0,
    welcome_point numeric(9) NOT NULL DEFAULT 0,
    update_date datetimeoffset NOT NULL,
    top_tpl nvarchar(max),
    product_tpl nvarchar(max),
    detail_tpl nvarchar(max),
    mypage_tpl nvarchar(max),
    good_traded nvarchar(max),
    message nvarchar(max),
    regular_holiday_ids nvarchar(max),
    latitude nvarchar(max),
    longitude nvarchar(max),
    downloadable_days numeric(9) DEFAULT 30,
    downloadable_days_unlimited smallint,
    PRIMARY KEY(id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'店舗基本情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会社名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'company_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会社名カナ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'company_kana'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(3桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'zip01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(4桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'zip02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'zipcode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'country_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'pref'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'addr01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'addr02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'tel01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'tel02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'tel03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'fax01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'fax02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'fax03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'営業時間',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'business_hour'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会社名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_company'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'代表者名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_manager'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(4桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_zip01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(3桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_zip02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_zipcode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_country_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_pref'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_addr01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_addr02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_tel01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_tel02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_tel03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_fax01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_fax02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_fax03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'E-mail',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_email'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ホームページURL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品代金以外の必要料金',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'注文方法',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払い方法',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払い期限',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term04'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'引渡し時期',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term05'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'返品・交換について',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term06'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'予備1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term07'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'予備2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term08'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'予備3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term09'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'予備4',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'law_term10'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注情報受付メールアドレス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'email01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'お問い合わせ受付メールアドレス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'email02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信エラー受付メールアドレス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'email03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メルマガ送信元メールアドレス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'email04'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送料無料条件',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'free_rule'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'店舗名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'shop_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'店舗名(フリガナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'shop_kana'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'店舗名(英名)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'shop_name_eng'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ポイント付与率初期値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'point_rate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会員登録付与ポイント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'welcome_point'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'未使用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'top_tpl'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'未使用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'product_tpl'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'未使用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'detail_tpl'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'未使用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'mypage_tpl'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'取り扱い商品',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'good_traded'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メッセージ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'message'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'定休日の曜日',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'regular_holiday_ids'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'緯度',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'latitude'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'経度',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'longitude'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ダウンロード可能日数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'downloadable_days'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ダウンロード無制限',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_baseinfo',
    @level2type = N'COLUMN',
    @level2name = N'downloadable_days_unlimited'
