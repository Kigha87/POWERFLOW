SELECT 
    * 
FROM {{ source('POWERFLOW', 'registrations') }}
WHERE user_id IS NOT NULL