-- Populate Authors Table (10 Rows)

INSERT INTO author (name) 
VALUES ('J.R.R. Tolkien'), ('George R.R. Martin'), ('J.K. Rowling'), ('Ernest Hemingway'), ('F. Scott Fitzgerald'), ('Jane Austen'), ('Mark Twain'), ('Leo Tolstoy'), ('Agatha Christie'), ('Stephen King');  

-- Populate Books Table (10 Rows)
INSERT INTO book (title, author_id) VALUES ('The Fellowship of the Ring', 1);
INSERT INTO book (title, author_id) VALUES ('A Game of Thrones', 2);
INSERT INTO book (title, author_id) VALUES ('Harry Potter and the Sorcerers Stone', 3);
INSERT INTO book (title, author_id) VALUES ('The Old Man and the Sea', 4);
INSERT INTO book (title, author_id) VALUES ('The Great Gatsby', 5);
INSERT INTO book (title, author_id) VALUES ('Pride and Prejudice', 6);
INSERT INTO book (title, author_id) VALUES ('Adventures of Huckleberry Finn', 7);
INSERT INTO book (title, author_id) VALUES ('War and Peace', 8);
INSERT INTO book (title, author_id) VALUES ('Murder on the Orient Express', 9);
INSERT INTO book (title, author_id) VALUES ('The Shining', 10);