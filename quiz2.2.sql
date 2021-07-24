CREATE DATABASE quiz2;
1. C) ---- 
2. D) ---- because intersection is when the same lines
3. A) ----
4. B) ---- because NULL will not bind
5. C) ---- because the insertion is rejected when the check condition is false. sum(b) currently has the value 14 (including the inserted tuple).







select m.title, avg(r.stars) as Rating from Movie m left join Rating r on m.mID=r.mID group by m.mID, r.mID order by rating desc, m.title asc; ---- part 2

select m.title, min(r.stars) from Movie m inner join Rating r on m.ID=r.mID group by m.mID, r.mID order by m.title asc;

select re.name from Reviewer re inner join Rating r where r.ratingDate is null;

create materialized view newView as select m.title from Movie m left join Rating r on m.mID=r.mID where m.ID not in(select mID from Rating);

create role manager;
grant select, update on view newView to manager;
