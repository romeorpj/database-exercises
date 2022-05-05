USE codeup_test_db;

drop table if exists albums;

show tables;
-- Just wanted to test if table would work with a mixture of upper and lowercase values
create table if not exists albums
(
    id int UNSIGNED not null auto_increment primary key ,
    artist VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    release_date INT,
    sales DOUBLE,
    genre varchar(255)
);

DESCRIBE albums;

# show create table albums;

ALTER TABLE albums
ADD UNIQUE (name, artist);