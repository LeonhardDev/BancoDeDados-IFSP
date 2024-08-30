CREATE DATABASE LEON_IFSP;

Use LEON_IFSP;


create table TBcurso 
(
	Cod_curso varchar(10),
    Nome varchar(55),
    Sigla Varchar(10),
    primary key (Cod_Curso)
    );

Create Table TBalunos
(
	Prontuario varchar(10),
    Nome_aluno varchar(50),
    Cod_Curso varchar(10),
    primary key (Prontuario),
    constraint FK_AlunoCurso foreign key (Cod_curso) references TBcurso(Cod_curso)
    );
    
    insert into TBcurso (Cod_Curso, Nome, Sigla) values ('CO1','informatica','inf');
    insert into TBcurso (Cod_Curso, Nome, Sigla) values ('M01','mecatronica','Meca');
    insert into TBalunos (Prontuario, Nome_aluno, Cod_Curso) values ('GU3052222','Pedro Pinhata', 'M01');
    
    Select* from TBcurso;
    
    Select * from TBalunos