attach "file:/Users/omax/Library/Application Support/Google/Chrome/Default/History?mode=ro" as chrome;
create temporary view chrome_urls as select url,title,visit_count*(365/90) as visit_count_year,last_visit_time/1000000-11644473600 as last_visit_time from urls;

attach "file:/Users/omax/Library/Safari/History.db?mode=ro" as safari;
create temporary view safari_urls as select url,title,visit_count*(365/365) as visit_count_year,MAX(visit_time) + 978307200 as last_visit_time from safari.history_items, safari.history_visits where history_items.id = history_visits.history_item group by history_visits.history_item;

.mode col
.header on

select *,(last_visit_time + visit_count_year*(60*60*24)) as rank from (select * from chrome_urls union all select * from safari_urls) where url like '%contactless%' order by rank desc limit 10;
