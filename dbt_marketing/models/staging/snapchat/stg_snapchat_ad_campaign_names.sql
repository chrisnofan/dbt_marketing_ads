/*
    Tables
*/

WITH source_data AS (

    SELECT * FROM {{ source('snapchat_ads', 'snapchat_ad_campaign_names') }}

),

/*
    Transformations
*/

formatted AS (

    SELECT
        -- PK
        CAST(campaign_id AS STRING) AS campaign_id,

        -- FK
        CAST(account_id AS STRING) AS account_id,

        -- Details
        CAST(campaign_name AS STRING) AS campaign_name

    FROM 
        source_data
)

SELECT * FROM formatted