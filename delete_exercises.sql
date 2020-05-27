USE codeup_test_db;

SELECT 'All albums released after 1991:' AS '';
SELECT name FROM albums WHERE release_date > 1991;

SELECT 'All disco albums:' AS '';
SELECT name FROM albums WHERE genre = 'disco';

SELECT 'All albums by Celine Dion:' AS '';
SELECT name FROM albums WHERE artist = 'Celine Dion';
