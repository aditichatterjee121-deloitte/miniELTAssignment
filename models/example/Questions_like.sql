select p.Body
from {{ref('USERS')}} u, {{ref('POSTS')}} p
where u.DisplayName like '%nau%' and p.PostTypeId = 1