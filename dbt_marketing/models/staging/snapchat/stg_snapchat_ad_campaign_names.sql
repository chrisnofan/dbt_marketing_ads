SELECT *
FROM {{ source('snapchat_ads', 'snapchat_ad_campaign_names') }}