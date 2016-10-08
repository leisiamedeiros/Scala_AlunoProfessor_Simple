# Lista schema

# --- !Ups

CREATE TABLE LISTA (
    ID SERIAL PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL,
    ASSUNTO VARCHAR(255) NOT NULL
);

CREATE TABLE QUESTAO (
    ID SERIAL PRIMARY KEY,
    NUMERO BIGINT NOT NULL,
    ENUNCIADO VARCHAR(255) NOT NULL,
    GABARITO VARCHAR(255) NOT NULL,
    ENTRADA VARCHAR(255) NOT NULL,
    SAIDA VARCHAR(255) NOT NULL,
    LISTA_ID BIGINT NOT NULL,
    CONSTRAINT fk_questao_lista
        FOREIGN KEY (LISTA_ID)
        REFERENCES LISTA (ID)
);

CREATE TABLE ALUNO (
    ID SERIAL PRIMARY KEY,
    LISTA BIGINT NOT NULL,
    QUESTAO BIGINT NOT NULL,
    RESPOSTA VARCHAR(255) NOT NULL
);

# --- !Downs

DROP TABLE ALUNO;

DROP TABLE QUESTAO;

DROP TABLE LISTA;

