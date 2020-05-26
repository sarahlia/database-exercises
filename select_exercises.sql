USE codeup_test_db;

SELECT 'Name of all albums by Pink Floyd:' AS 'Problem 1';
SELECT name FROM albums where artist = 'Pink Floyd';

SELECT 'Release date of the album Sgt. Pepper''s Lonely Hearts Club Band:' AS 'Problem 2';
SELECT release_date FROM albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums where name = 'Nevermind';

SELECT name FROM albums where release_date BETWEEN 1990 and 1999;

SELECT name FROM albums where sales < 20;

SELECT name FROM albums where genre = 'Rock';

