CREATE DATABASE siscadastro (
  	create table estado (
	idestado int not null auto_increment primary key,
                nomeestado varchar(50),
                uf varchar(20)), 
        
CREATE TABLE cidade (
	idcidade int not null auto_increment primary key,
       	cep varchar(25),
      	nomecidade varchar(150),
        	idestado int,
   constraint fk_idestado FOREIGN KEY (idestado) REFERENCES estado (idestado)),   
    
	create table ocupacao (
		idocupacao int not null auto_increment primary key,
        ocupacaonome varchar(100)),
        
	create table estadocivil (
		idestadocivil int not null auto_increment,
        estadocivilnome varchar(100)),
    
	create table pessoa (
		idpessoa int not null auto_increment primary key,
        nome varchar(255),
        cpf varchar(45),
        rg varchar(20),
        idocupacao int,
        idestadocivil int,
    constraint fk_idocupacao FOREIGN KEY (idocupacao) REFERENCES ocupacao (idocupacao),
    constraint fk_idestadocivil FOREIGN KEY (idestadocivil) REFERENCES estadocivil (idestadocivil)),
        
    create table endereco (
		idendereco int not null auto_increment primary key,
        cep varchar(45),
        logradouro varchar(200),
        bairro varchar(100),
        numcasa int,
        idpessoa int,
        idcidade int,
    constraint fk_idpessoa FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa),
    constraint fk_idcidade FOREIGN KEY (idcidade) REFERENCES cidade (idcidade)),
    
	create table telefone (
		idtelefone int not null auto_increment primary key,
        ddd varchar(20),
        numerofone varchar(50),
        idpessoa int,
    constraint fk_idpessoa FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa)));  