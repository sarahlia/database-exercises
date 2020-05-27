USE codeup_test_db;

# SELECT 'All albums with a lot more sales' AS '';
# SELECT * FROM albums;
# UPDATE albums
# SET sales = (sales * 10);
# SELECT * FROM albums;

# SELECT 'All albums with a release date in the 1800s:' AS '';
# SELECT name FROM albums where release_date < 1980;
# UPDATE albums
# SET release_date = (release_date - 100);
# SELECT * FROM albums;

SELECT 'All albums by Peter Jackson:' AS '';
SELECT name FROM albums where artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT name FROM albums where artist = 'Peter Jackson';
