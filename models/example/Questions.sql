{{ config(materialized='view') }}


select p.Body
from {{ref('USERS')}} u join {{ref('POSTS')}} p
on u.Id = p.OwnerUserId
where u.DisplayName = 'alexandrul' and p.PostTypeId = 1