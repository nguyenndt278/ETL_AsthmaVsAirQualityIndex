select * from aqi_by_mean;
select * from asthma_updated;

select a."County", a."ER_Visits", m."DAILY_AQI_VALUE"
from asthma_updated as a
inner join aqi_by_mean as m
on a."County" = m."COUNTY";

