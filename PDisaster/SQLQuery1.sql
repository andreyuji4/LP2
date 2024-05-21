CREATE TABLE TIPO (   IDTIPO INT  IDENTITY NOT NULL ,   DESCRICAO VARCHAR(50)    NOT NULL, PRIMARY KEY(IDTIPO)); CREATE TABLE CIDADE (   IDCIDADE INT   IDENTITY NOT NULL  ,   NOME VARCHAR(100)   NOT NULL  ,   UF CHAR(2)    NOT NULL ,   POPULACAO INT   NOT NULL    , PRIMARY KEY(IDCIDADE)); CREATE TABLE EVENTO (   IDEVENTO INT   IDENTITY NOT NULL ,   TIPO_IDTIPO INT   NOT NULL ,   CIDADE_IDCIDADE INT   NOT NULL ,   NIVELSEVERIDADE CHAR(1)    NOT NULL ,   AREAAFETADA INT    NOT NULL ,   PESSOASAFETADAS INT   NOT NULL  ,   OBSERVACAO VARCHAR(200)   NOT NULL    , PRIMARY KEY(IDEVENTO)    ,   FOREIGN KEY(CIDADE_IDCIDADE)     REFERENCES CIDADE(IDCIDADE),   FOREIGN KEY(TIPO_IDTIPO)     REFERENCES TIPO(IDTIPO)); 