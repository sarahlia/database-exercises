USE codeup_test_db;

SELECT 'All albums released after 1991:' AS '';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All disco albums:' AS '';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'All albums by Celine Dion:' AS '';
DELETE FROM albums WHERE artist = 'Celine Dion';
