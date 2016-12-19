
create database dbsmartgames;

use dbsmartgames;

create table tblloja(codloja int primary key auto_increment,
					logradouro varchar(45) not null,
                    numero varchar(45) not null,
                    cidade varchar(45) not null,
					nomeReferencia varchar(45) not null
);

create table tblgame(codgame int primary key auto_increment,
					nome varchar(45) not null,
                    descricao text not null,
                    preco decimal(9,2),
                    classificacao varchar(45) not null,
                    imagem varchar(100) not null,
                    desenvolvedor varchar(45) not null,
                    plataforma varchar(45) not null,
                    genero varchar(45) not null,
                    codloja int);
                    
create table tblusuario(codUsuario int primary key auto_increment,
						nome varchar(45) not null,
                        login varchar(45) not null,
                        senha varchar(45) not null
);

alter table tblgame add foreign key (codloja) references tblloja (codloja);
                    