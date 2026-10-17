SELECT *
FROM {{ source('snapchat_ads', 'snapchat_ads_stats') }}