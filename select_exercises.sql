USE codeup_test_db;

USE codeup_test_db;


select name AS 'Albums by pink floyd' from  albums
where artist = 'Pink Floyd';



select release_date AS "Release date of Sgt. Pepper's Lonely Hearts Club Band " from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';


select  genre AS "Genre of Nirvana's Nevermind" from albums where name = 'Nevermind';


-- select * from albums where release_date >= 1990 and release_date <= 1999;

select * from albums  where release_date between 1990 and 1999;

select 'Which albums had less than 20 million certified sales' as '';

select * from  albums  where sales < 20;

select 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' as '';

select * from albums where genre = 'rock';








