select Name, count(UserId) as cnt
from {{ ref('BADGES') }}
group by Name
order by cnt desc limit 10