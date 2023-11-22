use ig_clome;
select * from users;

-- Identify the five oldest users on Instagram from the provided database.--
select
username from users
order by created_at asc limit 5;
 
-- Identify users who have never posted a single photo on Instagram.--
select username, image_url from users u 
left join photos p
on u.id = p.user_id 
where p.user_id is null;

##Determine the winner of the contest and provide their details to the team.--
select username, ph.id,ph.image_url,
count(*) as Total
From photos ph
Inner Join likes l
  on ph.id=l.photo_id
Inner Join users u
 on u.id= ph.user_id
Group by ph.id
Order by total desc
Limit 1;



