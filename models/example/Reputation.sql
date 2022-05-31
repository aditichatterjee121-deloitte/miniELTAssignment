{{ config(materialized='view') }}


select Id,DisplayName,Reputation
from {{ ref('USERS')}}
order by Reputation
desc limit 10