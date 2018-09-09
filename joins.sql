SELECT *
FROM users;

SELECT *
FROM posts
WHERE user_id = 100;

SELECT *, users.first_name, users.last_name
FROM posts
LEFT JOIN users
ON 