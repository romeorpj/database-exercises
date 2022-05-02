USE codeup_test_db;

TRUNCATE albums;
# RENAME TABLE album TO albums;

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES('Eagles','Hotel California',1976,31.5,'Soft Rock'),
      ('Whitney Houston', 'The Bodyguard',1992,32.4,'R&B'),
      ('Eagles','Their Greatest Hits (1971-1975)',1976,41.2,'Country Rock'),
      ('Michael Jackson','Thriller',1982,50.2,'Pop');

#
# UPDATE codeup_test_db.albums
# SET release_date = 1982
# WHERE artist = 'Michael Jackson';