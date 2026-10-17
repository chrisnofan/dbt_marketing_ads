SELECT *
FROM {{ source('snapchat_ads', 'snapchat_ad_group_names') }}