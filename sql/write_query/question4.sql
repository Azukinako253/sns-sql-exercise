-- 以下にクエリを書いてください
select post_tags.post_id, posts.content from posts inner join post_tags on posts.id = post_tags.post_id inner join tags on post_tags.tag_id = tags.id where tags.name = 'programming' order by posts.id asc;
