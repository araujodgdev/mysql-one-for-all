-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE artista (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE plano(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano_nome VARCHAR(50) NOT NULL,
    plano_valor DOUBLE NOT NULL,
) engine = InnoDB;

CREATE TABLE pessoa_usuaria(
    pessoa_usuaria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_usuaria VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATE NOT NULL,
    plano_pessoa_usuaria INT NOT NULL,
    FOREIGN KEY (plano_pessoa_usuaria) REFERENCES plano (plano_id)
) engine = InnoDB;

CREATE TABLE pessoa_usuaria(
    pessoa_usuaria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_usuaria VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATE NOT NULL,
    plano_pessoa_usuaria INT NOT NULL,
    FOREIGN KEY (plano_pessoa_usuaria) REFERENCES plano (plano_id)
) engine = InnoDB;

CREATE TABLE album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(50) NOT NULL,
    artista INT NOT NULL,
    ano_lancamento YEAR NOT NULL,
    FOREIGN KEY (artista) REFERENCES artista (artista_id)
) engine = InnoDB;

CREATE TABLE pessoa_usuaria_seguindo(
    pessoa_usuaria INT NOT NULL,
    artista VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (pessoa_usuaria, artista),
      FOREIGN KEY (pessoa_usuaria) REFERENCES pessoa_usuaria (pessoa_usuaria_id),
      FOREIGN KEY (artista) REFERENCES artista (artista_id)
) engine = InnoDB;

CREATE TABLE cancao(
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cancao VARCHAR(50) NOT NULL,
    duracao_segundos INT NOT NULL,
    album INT NOT NULL,
    FOREIGN KEY (album) REFERENCES album (album_id)
) engine = InnoDB;

CREATE TABLE historico_reproducao(
    reproducao_id INT PRIMARY KEY AUTO_INCREMENT,
    pessoa_usuaria VARCHAR(50) NOT NULL,
    cancao INT NOT NULL,
    data_reproducao DATETIME NOT NULL,
    FOREIGN KEY (pessoa_usuaria) REFERENCES pessoa_usuaria (pessoa_usuaria_id),
    FOREIGN KEY (cancao) REFERENCES cancao (cancao_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');
INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');
