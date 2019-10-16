USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

select * from users;

SELECT user.name As 'user_name', role.name as 'role_name'
from users as user
         join roles AS role ON user.role_id = role.id;

INSERT INTO users(name, email, role_id)
values
('lance', 'example_email@gmail.com', '3'),
('syd','example_email@gmail.com', '3'),
('kona','example_email@gmail.com', '3'),
('anna','example_email@gmail.com', NULL);

SELECT users.name as user_name, roles.name as role_name
FROM roles
         LEFT JOIN users ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM roles
         RIGHT JOIN users ON users.role_id = roles.id;

select * from users;
select * from roles;



select role.name, count(user.role_id) as total
from roles role
         left join users user on role.id = user.role_id
group by role.name
order by total desc;



