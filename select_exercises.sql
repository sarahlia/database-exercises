USE codeup_test_db;

SELECT name FROM albums where artist = 'Pink Floyd';

SELECT release_date FROM albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums where name = 'Nevermind';

SELECT name FROM albums where release_date >= 1990 and release_date < 2000;

SELECT name FROM albums where sales <= 20;

SELECT name FROM albums where genre = 'Rock';

