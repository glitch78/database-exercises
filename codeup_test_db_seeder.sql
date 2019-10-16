use codeup_test_db;

SELECT artist, name from albums where name like 'ba%';
ALTER TABLE albums
    ADD unique (artist, name);
