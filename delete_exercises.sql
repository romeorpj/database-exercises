USE codeup_test_db;

--     Switch select statements to delete for safer delete practices

-- SELECT name
-- FROM albums
-- WHERE release_date > 1991;

DELETE name
FROM albums
WHERE release_date > 1991;

-- SELECT name
-- FROM albums
-- WHERE genre = 'disco';

DELETE name
FROM albums
WHERE genre = 'disco';

-- SELECT name
-- FROM albums
-- WHERE artist = 'Whitney Houston';

DELETE name
FROM albums
WHERE artist = 'Whitney Houston';