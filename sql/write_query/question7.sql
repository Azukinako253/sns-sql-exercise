-- 以下にクエリを書いてください
SELECT users.username, posts.content AS latest_post_content
FROM users
INNER JOIN posts ON users.id = posts.user_id
INNER JOIN (
    SELECT user_id, MAX(posted_at) AS latest_posted_at
    FROM posts
    GROUP BY user_id
) AS latest ON posts.user_id = latest.user_id
           AND posts.posted_at = latest.latest_posted_at
ORDER BY users.username ASC;
