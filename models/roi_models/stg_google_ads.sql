SELECT
   g.device_id,
   g.attribution_time,
   'google_ads' AS channel,
   g.campaign AS campaign_id,
   c.cost AS attribution_cost
FROM {{ source('POWERFLOW', 'google_ads') }} AS g
LEFT JOIN {{ ref('campaign_costs') }} AS c
    ON g.campaign = c.campaign_id