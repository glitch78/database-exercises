USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL,
    name  VARCHAR(255) NOT NULL,
    release_date INT(4) UNSIGNED,
    sales FLOAT(5, 2) UNSIGNED,
    genre VARCHAR(255),
    PRIMARY KEY (id)
);
