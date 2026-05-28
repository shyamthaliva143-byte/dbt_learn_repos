{{
    config (
        materialized = 'table',
        schema = 'CLEAN'
    )
}}

SELECT 
    CUSTOMER_ID,
    NAME,
    CITY,
    ACCOUNT_BALANCE,
    CASE 
        WHEN ACCOUNT_BALANCE > 50000 THEN 'RICH'
        WHEN ACCOUNT_BALANCE BETWEEN 25000 AND 49999 THEN 'MIDDLECLASS'
        ELSE 'POOR'
    END AS HIGH_SAL_CUST
FROM {{ ref('ranked_sal_customer') }}

