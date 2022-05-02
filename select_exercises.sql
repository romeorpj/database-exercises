USE codeup_test_db;

SELECT name
FROM codeup_test_db.albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM codeup_test_db.albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM codeup_test_db.albums
WHERE name = 'Nevermind';

SELECT name
FROM codeup_test_db.albums
WHERE release_date BETWEEN 1990 and 1999;

SELECT name
FROM codeup_test_db.albums
Where sales < 20000000;

SELECT name
FROM codeup_test_db.albums
Where genre = 'Rock';
