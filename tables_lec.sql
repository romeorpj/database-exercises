USE codeup_test_db;

#     CREATE TABLE IF NOT EXISTS users
#     (
#         id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#         username VARCHAR(100) NOT NULL,
#         email VARCHAR(255) NOT NULL,
#         first_name VARCHAR(255) NOT NULL,
#         last_name VARCHAR(255) NOT NULL,
#         middle_name VARCHAR(255)
#     );
CREATE TABLE IF NOT EXISTS cats
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    breed VARCHAR(255) NOT NULL,
    age INT UNSIGNED NOT NULL,
    fake_age INT UNSIGNED NOT NULL
);

ALTER TABLE cats
ADD fake_age INT UNSIGNED NOT NULL;