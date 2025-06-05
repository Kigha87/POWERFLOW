{{
    config(
        materialized='table'
    )
}}


SELECT *
FROM POWERFLOW.PUBLIC.TRANSACTIONS
LIMIT 50