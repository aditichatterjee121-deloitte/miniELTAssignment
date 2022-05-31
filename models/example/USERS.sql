{{config(materialized='table')}}



select
value:"@AccountId" as AccountId,
value:"@CreationDate"::Timestamp as CreationDate,
value:"@DisplayName" as DisplayName,
value:"@DownVotes" as DownVotes,
value:"@Id" as Id,
value:"@LastAccessDate"::Timestamp as LastAccessDate,
value:"@ProfileImageUrl" as ProfileImageUrl,
value:"@Reputation" as Reputation,
value:"@UpVotes" as UpVotes,
value:"@Views" as Views,
value:"@WebsiteUrl" as WebsiteUrl
from "MINIIASSIGNMENT"."MINIASSIGN"."USERS",
lateral flatten(to_array("MINIIASSIGNMENT"."MINIASSIGN"."USERS".U1:"$"))