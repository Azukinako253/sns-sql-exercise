-- 以下にクエリを書いてください
select id, left(content, 20) as content, posted_at from posts where user_id = 5 order by posted_at desc limit 10;
