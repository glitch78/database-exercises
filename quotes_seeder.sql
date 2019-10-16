USE codeup_test_db;

INSERT INTO quotes (author_first_name, author_last_name,  content)
VALUES
('lancelot', 'ellis', 'perseverance wins the day'),('Mother', 'Teresa', 'If you judge people, you have no time to love them.');

SELECT author_last_name, content FROM quotes;
DELETE FROM quotes WHERE id = 2;


# notes for how to extract information from other tables
# altering column for quotes/books table
#  ALTER TABLE quotes
#      ADD author INT;


# CREATE  TABLE authors(
#     id INT unsigned NOT NULL AUTO_INCREMENT,
#     first_name varchar(50),
#     last_name  varchar(50) NOT NULL,
#     PRIMARY KEY (id),
#     unique (first_name, last_name)
# )