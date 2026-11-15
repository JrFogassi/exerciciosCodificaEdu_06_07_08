CREATE TABLE item (
    id         INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    codigo     VARCHAR(20)  NOT NULL UNIQUE,
    titulo     VARCHAR(200) NOT NULL,
    tipo       VARCHAR(10)  NOT NULL CHECK (tipo IN ('LIVRO', 'REVISTA')),
    autor      VARCHAR(150),   
    edicao     INTEGER,        
    disponivel BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE usuario (
    id          INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome        VARCHAR(150) NOT NULL,
    tipo        VARCHAR(10)  NOT NULL CHECK (tipo IN ('ALUNO', 'PROFESSOR')),
    limite_itens INTEGER     NOT NULL CHECK (limite_itens > 0)
);

CREATE TABLE emprestimo (
    id                      INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    item_id                 INTEGER NOT NULL REFERENCES item(id),
    usuario_id              INTEGER NOT NULL REFERENCES usuario(id),
    data_retirada           DATE NOT NULL,
    data_devolucao_prevista DATE NOT NULL,
    data_devolucao          DATE,          
    valor_multa             NUMERIC(10,2) NOT NULL DEFAULT 0
);