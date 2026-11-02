-- 以下にクエリを書いてください

SELECT tags.name, COUNT(post_tags.post_id) AS posts_count
FROM tags
INNER JOIN post_tags ON tags.id = post_tags.tag_id
GROUP BY tags.id
HAVING posts_count >= 12
ORDER BY posts_count DESC, tags.name ASC;
-- GROUP BY post_tags.tag_idでもOK　
