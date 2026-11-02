-- 以下にクエリを書いてください
select users.username, posts.content, posts.posted_at from users inner join posts on users.id = posts.user_id order by posts.posted_at desc limit 20;
