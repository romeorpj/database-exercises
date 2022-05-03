USE codeup_test_db;

--     Switch select statements to delete for safer delete practices

-- SELECT *
-- FROM albums
-- WHERE release_date > 1991;

DELETE *
FROM albums
WHERE release_date > 1991;

-- SELECT *
-- FROM albums
-- WHERE genre = 'disco';

DELETE *
FROM albums
WHERE genre = 'disco';

-- SELECT *
-- FROM albums
-- WHERE artist = 'Whitney Houston';

DELETE *
FROM albums
WHERE artist = 'Whitney Houston';