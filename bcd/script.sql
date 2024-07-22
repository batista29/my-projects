drop database if exists Your_projects;
create database Your_projects charset=UTF8 collate utf8_general_ci;

create table user(
    id integer primary key auto_increment,
    nome varchar(30) not null,
    email varchar(30) not null,
    senha varchar(10) not null,
    telefone varchar(14)
); 

create table project(
    id integer primary key auto_increment,
    nome varchar(30) not null,
)