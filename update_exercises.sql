USE codeup_test_db;

-- 111
SELECT name
FROM FROM codeup_test_db.albums;

UPDATE albums
SET sales = sales * 10;

SELECT name
FROM FROM codeup_test_db.albums;

-- 222
SELECT name
FROM FROM codeup_test_db.albums
WHERE release_date < 1981;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

SELECT name
FROM FROM codeup_test_db.albums
WHERE release_date = 1800;
-- 333
SELECT artist
FROM FROM codeup_test_db.albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT artist
FROM FROM codeup_test_db.albums
WHERE artist = 'Peter Jackson';