DROP DATABASE IF EXISTS mm;

CREATE DATABASE mm;

USE mm;

DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id text,
  title varchar(30) NOT NULL DEFAULT ''
);

INSERT INTO user VALUES('1', 'pavan');
INSERT INTO user VALUES('2', 'kumar');