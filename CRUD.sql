create table Alunos(
	id_aluno integer, 
	nome varchar(100), 
	idade integer, 
	sexo char(2), 
	peso decimal,
    login integer,
    endereco varchar(100),
    rg varchar(10),
    cpf char(11),
    data_nascimento date,
    telefone char(9),
    id_plano char (3),
    id_horario integer,
    primary key (id_plano),
    primary key (id_aluno),
    primary key(id_horario),
    foreign key (id_horario) REFERENCES Horario (id_horario),
    foreign key (id_plano) REFERENCES Plano (id_plano)
    );
   insert into Alunos(id_aluno,nome,idade,sexo,peso,login,endereco,rg,cpf,data_nascimento,telefone,id_plano,id_horario)
   values(05,'Lara',30,'F',58,1110010,'Rua Sao Paulo',32123122200,45211223331,04/08/1990,9971222232,004,00004);
   
   
   
    create table Alunos_horario(
		id_aluno integer,
        id_horario integer,
        primary key (id_aluno,id_horario)
    );
    
create table Horario(
	id_horario integer ,
    hr_inicio varchar(15),
    hr_fim varchar(15),
    id_mod integer,
    primary key (id_horario)
	);

create table Modalidade (
	id_mod integer ,
	nome char (5),
	descricao varchar(200),
    preco integer,
	primary key (id_mod,id_horario),
    foreign key (id_horario) REFERENCES Horario (id_horario)
	);
    
create table Funcionario (
	id_func integer ,
	nome varchar (100), 
    idade integer,
    sexo char(2),
    peso decimal,
    telefone integer (10),
    primary key (id_func)
	);
	insert into Funcionario(id_func,nome,idade,sexo,peso,telefone)
    values (10,'Denao',21,'F',55,997759488);
    

create table Professor (
	id_func integer,
    nome_func varchar (100),
    idade integer,
    sexo char (2),
    telefone integer (10),
    primary key (id_func)
    );
    
create table Recepcionista (
	id_func integer,
    nome_func varchar (100),
    idade integer,
    sexo char (2),
    telefone integer (10),
    primary key (id_func)
    );

create table Alunos_modalidade(
	id_aluno integer,
    id_horario integer,
    primary key (id_aluno, id_horario ),
    foreign key (id_aluno) REFERENCES Alunos (id_alunos),
    foreign key (id_horario) REFERENCES Horario (id_horario)
	);
     

   
create table Plano (
	id_plano char (3),
    nome_plano varchar (20),
    plano_descricao varchar(200),
    qtd_meses integer,
    primary key (id_plano)
	);

create table Pagamento(
	id_plano char (3),
    pgto_valor decimal(10,2),
    pgto_desconto decimal(10,2),
    primary key (id_plano),
    foreign key (id_plano) REFERENCES Plano (id_plano)
	);


create table Produto (
	id_prod integer,
    nome_prod varchar (100),
    quantidade varchar (100),
    primary key (id_prod)
);
    
create table Academia_admin (
    id_aluno integer,
    id_func integer,
    id_prod integer,

    primary key (id_aluno),
    primary key (id_func),
    primary key (id_prod),
    
    foreign key (id_aluno) REFERENCES Aluno (id_aluno),
    foreign key (id_func) REFERENCES Funcionario (id_func),
    foreign key (id_prod) REFERENCES Produto (id_prod)
    );
    select * from alunos tables;
    select * from funcionario tables;
    select nome from alunos where idade < 27;
    