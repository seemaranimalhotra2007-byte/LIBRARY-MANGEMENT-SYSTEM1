-- Sample data. MERGE only inserts missing rows / refreshes the listed columns,
-- so availability of a book is NOT reset when the application restarts.
MERGE INTO books (book_id, title, author) KEY (book_id) VALUES (101, 'Introduction to Algorithms', 'Thomas H. Cormen');
MERGE INTO books (book_id, title, author) KEY (book_id) VALUES (102, 'Java: The Complete Reference', 'Herbert Schildt');
MERGE INTO books (book_id, title, author) KEY (book_id) VALUES (103, 'Database System Concepts', 'Abraham Silberschatz');
MERGE INTO books (book_id, title, author) KEY (book_id) VALUES (104, 'Clean Code', 'Robert C. Martin');
MERGE INTO books (book_id, title, author) KEY (book_id) VALUES (105, 'Operating System Concepts', 'Abraham Silberschatz');

MERGE INTO students (student_id, name, email, department) KEY (student_id) VALUES (1, 'Seema Rani', 'seema@example.com', 'CSE');
MERGE INTO students (student_id, name, email, department) KEY (student_id) VALUES (2, 'Garima Sharma', 'garima@example.com', 'CSE');
