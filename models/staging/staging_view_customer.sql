

--This is first model that checks for duplicates in customer_clean table
select 
CUSTOMER_ID,
NAME,
CITY,
EMAIL,
PHONE_NUMBER,
ACCOUNT_BALANCE,
UPDATE_TS
from banking_db.raw_data.customer_clean  