create table Alunos(
	cod_aluno integer, 
	cod_mod integer primary key,
	nome char(20), 
	idade integer, 
	sexo varchar(10), 
	peso decimal,
    endereco varchar(100),
    rg varchar(15),
    cpf varchar(15),
    data_nascimento date,
    telefone varchar(20),
    plano integer);

create table Alunos_modalidade(
	aluno integer,
    data_cadastro date,
    cod_func integer,
    cod_mod integer,
    horario integer
);


create table funcionario (
	cod_func integer primary key,
	cod_aluno integer,
    cod_mod integer,
	nome char (20), 
    idade integer,
    sexo varchar(10),
    peso decimal,
    telefone varchar (45)
);

create table funcionario_modalidade(
	func_cod_func integer,
    mod_cod_mod integer
);
    
   
     
create table Modalidade (
	cod_mod integer primary key,
	cod_func integer,
	nome char (20),
	descricao varchar(200),
    preco integer
	
);
   
create table plano (
	id_plano integer primary key,
    plano_descricao varchar(200),
    qtd_meses integer 
    
);

create table horario(
	id_horario integer primary key,
    hr_inicio varchar(15),
    hr_fim varchar(15),
    modalidade integer
);

create table pagamento(
	id_pgto integer,
    plano integer,
    pgto_valor decimal(12,2),
    pgto_desconto decimal(12,2),
    aluno integer
);

create table pagamento_modalidade(
	mod_id_mod integer,
    pgto_id_pgto integer
);
