CREATE DATABASE helpdesk;

USE helpdesk;

CREATE TABLE usuarios (
    id_usuario int primary key NOT NULL auto_increment,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(60) NOT NULL UNIQUE,
    telefone VARCHAR(11) NOT NULL UNIQUE
);

SELECT * FROM usuarios

CREATE Table chamados (
    id_chamado int PRIMARY key not null AUTO_INCREMENT,
    descricao text not null,
    data_inicio DATETIME not null,
    data_fim DATETIME,
    situacao ENUM('pendente','em andamento','finalizado'),
    titulo VARCHAR(100)
);

SELECT * from chamados 

CREATE TABLE patrimonios (
    id_patrimonio int PRIMARY key not null AUTO_INCREMENT,
    numero_do_patrimonio VARCHAR(100) not null,
    nome VARCHAR(60) not null,
    setor VARCHAR(60) not null 
); 
SELECT * from patrimonios

alter Table usuarios add senha_hash VARCHAR(100) not null

alter Table usuarios add tipo_usuario VARCHAR(100) not null

ALTER TABLE chamados ADD COLUMN fk_usuarios_id_usuario INT

alter Table chamados add CONSTRAINT fk_chamdos_id_usuario
Foreign Key (fk_usuarios_id_usuario) REFERENCES usuarios(id_usuario)

alter table chamados add COLUMN fk_patrimonios_id_patrimonio INT

alter table chamados add CONSTRAINT fk_chamados_patrimonios
Foreign Key (fk_patrimonios_id_patrimonio) REFERENCES patrimonios(id_patrimonio)

SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE IF EXISTS helpdesk;
DROP DATABASE IF EXISTS helpdesk_db;

CREATE DATABASE helpdesk_db;

USE helpdesk_db;

SET FOREIGN_KEY_CHECKS = 1;
CREATE DATABASE IF NOT EXISTS helpdesk_db;
USE helpdesk_db;