CREATE DATABASE IF NOT EXISTS fortran_db;

USE fortran_db;


# CREATE TABLE IF NOT EXISTS teamS
# (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     city VARCHAR(255) NOT NULL,
#     name varchar(255) NOT NULL
#     );
#
#
#
# CREATE TABLE IF NOT EXISTS players
# (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(255) NOT NULL,
#     last_name VARCHAR(255) NOT NULL,
#     jersey_number INT UNSIGNED NOT NULL,
#     is_active TINYINT UNSIGNED NOT NULL,
#     team_id INT UNSIGNED NOT NULL,
#     FOREIGN KEY (team_id) REFERENCES teamS(id)
#     );
#
#
# CREATE TABLE IF NOT EXISTS positions
# (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     position CHAR(2)
# );
#
# CREATE TABLE IF NOT EXISTS player_position(
#     player_id INT UNSIGNED NOT NULL,
#     position_id INT UNSIGNED NOT NULL
# );

CREATE TABLE IF NOT EXISTS roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null),
       ('tom', 'tom@example.com', null),
       ('jerry', 'jerry@example.com', 2),
       ('nina', 'nina@example.com', 2),
       ('ally', 'ally@example.com', 2)
;

# select fff.name,email,role_id AS innerjoinny_rolesid
# From users AS fff
#          JOIN roles
#               ON fff.role_id = roles.id;
#
# select fff.name,email,role_id AS leftjoinny_rolesid
# From users AS fff
# LEFT JOIN roles
# ON fff.role_id = roles.id;
#
# select fff.name,email,role_id AS rightjoinny_rolesid
# From users AS fff
# RIGHT JOIN roles
# ON fff.role_id = roles.id;

SELECT roles.name, COUNT(roles.name)
FROM users
RIGHT JOIN roles
ON users.role_id = roles.id
GROUP BY roles.id;



dept_name AS 'Department Name',

LEFT JOIN employees AS Emp
ON dm.emp_no = Emp.emp_no