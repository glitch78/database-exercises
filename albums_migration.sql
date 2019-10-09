USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name  VARCHAR(50) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT NOT NULL,
    PRIMARY KEY (id)
);
