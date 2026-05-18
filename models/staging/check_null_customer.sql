
-- this model is checking for null values in a table by using macro 
{{config (materialized ='table' ,
database = 'BANKING_DB',
alias='check_null_customers'
)}}

with dq_check as (

    {{  check_nulls_customer('banking_db.raw_data.customer_clean' ,['CUSTOMER_ID','NAME']) }}
)

SELECT * FROM dq_check 
WHERE null_check_status = 'FAIL'