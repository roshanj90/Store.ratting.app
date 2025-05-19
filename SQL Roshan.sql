Use store_rating_app;

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY auto_increment,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('user', 'admin') DEFAULT 'user'
);

CREATE TABLE stores (
    store_id INTEGER PRIMARY KEY auto_increment,
    store_name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);

-- Users
INSERT INTO users (username, password, role) VALUES 
('alice', 'hashedpassword1', 'user'),
('bob', 'hashedpassword2', 'user'),
('admin', 'hashedpassword3', 'admin');

ALTER TABLE stores ADD COLUMN location VARCHAR(255);

-- Stores
INSERT INTO stores (store_name, location) VALUES
('Star Coffee', 'New York'),
('Tech World', 'San Francisco'),
('Book Nest', 'Chicago');

SELECT * FROM users;

-- Insert specific user IDs if your table allows it
INSERT INTO users (user_id, username, password, role) VALUES
('alice', 'password123', 'user'),
('bob', 'password456', 'user'),
('admin', 'hashedpassword3','admin');

DROP TABLE IF EXISTS ratings;

CREATE TABLE random (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    store_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review VARCHAR(255)
);

INSERT INTO random (user_id, store_id, rating, review) VALUES
(1, 1, 5, 'Great coffee and friendly staff!'),
(1, 2, 4, 'Cool gadgets, but a bit pricey.'),
(2, 1, 3, 'Okay coffee, too crowded.'),
(2, 3, 5, 'Love the selection of books!');


