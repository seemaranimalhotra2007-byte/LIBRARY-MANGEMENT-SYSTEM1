CREATE TABLE IF NOT EXISTS books (
    book_id   INT          PRIMARY KEY,
    title     VARCHAR(150) NOT NULL,
    author    VARCHAR(100) NOT NULL,
    available BOOLEAN      NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS students (
    student_id INT          PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    email      VARCHAR(100),
    department VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS issue_records (
    issue_id    INT AUTO_INCREMENT PRIMARY KEY,
    book_id     INT           NOT NULL,
    student_id  INT           NOT NULL,
    issue_date  DATE          NOT NULL,
    due_date    DATE          NOT NULL,
    return_date DATE,
    fine        DECIMAL(8,2)  NOT NULL DEFAULT 0,
    FOREIGN KEY (book_id)    REFERENCES books(book_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
