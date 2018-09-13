SELECT *
FROM users;

SELECT *
FROM posts
WHERE user_id='100';

SELECT posts.*, users.first_name, users.last_name
FROM posts
LEFT JOIN users ON posts.user_id = users.id
WHERE users.id = '200';

SELECT posts.*, users.username
FROM posts
LEFT JOIN users ON posts.user_id = users.id
WHERE users.first_name='Norene' AND users.last_name = 'Schmitt';

SELECT users.username
FROM users
RIGHT JOIN posts ON posts.user_id = users.id
WHERE posts.created_at > '2015-01-01';

SELECT posts.title, posts.content, users.username
FROM users
JOIN posts ON posts.user_id = users.id
WHERE posts.created_at < '2015-01-01';

SELECT comments.*, posts.title
FROM posts
JOIN comments ON comments.posts_id = posts.id;

SELECT comments.*, posts.title, posts.url, comments.body
FROM posts
JOIN comments ON comments.posts_id = posts.id
WHERE posts.created_at < '2015-01-01';

SELECT comments.*, posts.title, posts.url, comments.body
FROM posts
JOIN comments ON comments.posts_id = posts.id
WHERE posts.created_at > '2015-01-01';

SELECT comments.*, posts.title, posts.url, comments.body
FROM posts
JOIN comments ON comments.posts_id = posts.id
WHERE comments.body LIKE '%USB%';

SELECT posts.title, users.first_name, users.last_name, comments.body
FROM users
LEFT JOIN posts ON posts.user_id = users.id
RIGHT JOIN comments ON comments.posts_id = posts.id
WHERE comments.body LIKE '%matrix%';

SELECT users.first_name, users.last_name, comments.body
FROM users
LEFT JOIN posts ON posts.user_id = users.id
RIGHT JOIN comments ON comments.posts_id = posts.id
WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

SELECT users.first_name, users.last_name, posts.title, users.username, comments.body
FROM users
LEFT JOIN posts ON posts.user_id = users.id
RIGHT JOIN comments ON comments.posts_id = posts.id
WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%') AND posts.content LIKE '%nemo%';