DROP DATABASE IF EXISTS test_db;
CREATE DATABASE test_db;

USE test_db;

DROP TABLE IF EXISTS test;

CREATE TABLE test (
  id int NOT NULL AUTO_INCREMENT primary key,
  name varchar(30),
  description varchar(255)
);

INSERT INTO test (id, name, description) VALUES (1, 'test1', 'テストデータ1です。');
INSERT INTO test (id, name, description) VALUES (2, 'test2', 'テストデータ2です。');
INSERT INTO test (id, name, description) VALUES (3, 'test3', 'テストデータ3です。');
INSERT INTO test (id, name, description) VALUES (4, 'test4', 'テストデータ4です。');
INSERT INTO test (id, name, description) VALUES (5, 'test5', 'テストデータ5です。');
INSERT INTO test (id, name, description) VALUES (6, 'test6', 'テストデータ6です。');
INSERT INTO test (id, name, description) VALUES (7, 'test7', 'テストデータ7です。');
INSERT INTO test (id, name, description) VALUES (8, 'test8', 'テストデータ8です。');
INSERT INTO test (id, name, description) VALUES (9, 'test9', 'テストデータ9です。');
INSERT INTO test (id, name, description) VALUES (10, 'test10', 'テストデータ10です。');