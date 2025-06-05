SELECT *
FROM {{ ref('stg_google_ads') }}
UNION
SELECT *
FROM {{ source('POWERFLOW', 'appsflyer') }}