drop database if exists my_projects;
create database my_projects charset=UTF8 collate utf8_general_ci;
use my_projects;

create table user(
    id_user INTEGER PRIMARY KEY auto_increment,
    nome_user VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    senha VARCHAR(10) NOT NULL,
    telefone VARCHAR(14)
);

create table project(
    id_project INTEGER PRIMARY KEY auto_increment,
    nome_project VARCHAR(30) NOT NULL
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

INSERT INTO user VALUES(DEFAULT,'Nata Batista','nata@gmail.com','1234','(19)98194-0067');
INSERT INTO user VALUES(DEFAULT,'Lucas','lucas@gmail.com','1234','(19)95194-0067');
SELECT * FROM user;

INSERT INTO project VALUES(DEFAULT,'Primeiro projeto');
INSERT INTO project VALUES(DEFAULT,'Segundo projeto');
INSERT INTO project VALUES(DEFAULT,'Terceiro projeto');
SELECT * FROM project;

INSERT INTO user_project VALUES(1,1);
INSERT INTO user_project VALUES(1,2);
INSERT INTO user_project VALUES(2,3);

-- Ligação da tabela de user com projeto
SELECT
user.nome_user, user.email, user.telefone,
project.nome_project
FROM user
INNER JOIN user_project
ON user.id_user = user_project.id_user
INNER JOIN project
ON project.id_project = user_project.id_project;