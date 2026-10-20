/*
    Tables
*/

WITH source_data AS (

    SELECT * FROM {{ source('snapchat_ads', 'snapchat_ad_names') }}

),

/*
    Transformations
*/

formatted AS (

    SELECT
        -- PK
        CAST(ad_id AS STRING) AS ad_id,

        -- FK
        CAST(ad_group_id AS STRING) AS ad_group_id,

        -- Details
        CAST(ad_name AS STRING) AS ad_name,

        -- Metadata
        CAST(ad_detail_updated_at AS TIMESTAMP) AS ad_detail_updated_at
    FROM
        source_data
)

SELECT * FROM formatted