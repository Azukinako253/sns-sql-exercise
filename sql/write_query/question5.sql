-- 以下にクエリを書いてください
-- select likes.post_id, posts.content
SELECT posts.id AS post_id, posts.content, COUNT(likes.id) AS likes_count
FROM posts
LEFT JOIN likes ON posts.id = likes.post_id
GROUP BY posts.id
ORDER BY likes_count DESC, posts.posted_at DESC;
