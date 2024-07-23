drop database if exists my_projects;
create database my_projects charset=UTF8 collate utf8_general_ci;
use my_projects;

create table user(
    id_user INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    senha VARCHAR(10) NOT NULL,
    telefone VARCHAR(14)
);

create table project(
    id_project INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(30) NOT NULL
);

create table user_project(
    id_user INTEGER,
    FOREIGN KEY(id_user) REFERENCES user(id_user),
    id_project INTEGER,
    FOREIGN KEY(id_project) REFERENCES project(id_project)
);

create table task(
    id INTEGER PRIMARY KEY auto_increment,
    id_project INTEGER,
    FOREIGN KEY(id_project) REFERENCES project(id_project),
    nome VARCHAR(30) NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME
);