--creatimg table
CREATE TABLE users(
user_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email_id VARCHAR(50) UNIQUE,
age INT CHECK(age>=18),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users(user_id,name,email_id,age)
VALUES(1,'KUSHAL','kushal@1806gmail.com',20)

INSERT INTO users(user_id,name,email_id,age)
VALUES(2,'KUSHAL','kushal@186gmail.com',26)
SELECT * FROM users;

INSERT INTO users(user_id,name,email_id,age)
VALUES(3,'KUSHAL','kushal@180gmail.com',20)