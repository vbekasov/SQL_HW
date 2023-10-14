/*
Создать таблицу "Users"
Поле "user_id" - уникальный идентификатор пользователя (целое число, автоинкрементное, первичный ключ).
Поле "user_name" - имя пользователя (строка, максимум 50 символов, обязательное).
Поле "email" - адрес электронной почты (строка, максимум 100 символов, уникальное).
Поле "age" - возраст пользователя (целое число, от 0 до 140).
Поле "gender" - пол пользователя (значение 'm' или 'f')
Добавить следующие данные в таблицу "Users"
Пользователь с именем "John Doe", адрес электронной почты "johndoe@example.com", возраст 30 лет.
Пользователь с именем "Jane Smith", адрес электронной почты "janesmith@example.com", возраст 25 лет.
--------------------------------
*/

CREATE DATABASE Users;
USE Users;

CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name CHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age BETWEEN 0 AND 140),
    gender CHAR(1) CHECK (gender IN ('m','f'))
);

ALTER TABLE users AUTO_INCREMENT = 1;

-- =============================================
INSERT INTO users (
	user_name,
    email,
    age)
VALUES (
	"John Doe",
  "johndoe@example.com",
  30);
	
INSERT INTO users (
	user_name,
    email,
    age)
VALUES (
	"Jane Smith",
  "janesmith@example.com",
  25);
