SELECT 
*
FROM {{ source('facebook_ads', 'facebook_account') }}
