DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE artista (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE plano(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano_nome VARCHAR(50) NOT NULL,
    plano_valor DOUBLE NOT NULL
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
    artista INT NOT NULL,
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
    pessoa_usuaria INT,
    cancao INT,
    data_reproducao DATETIME,
    CONSTRAINT PRIMARY KEY (pessoa_usuaria, cancao, data_reproducao),
    FOREIGN KEY (pessoa_usuaria) REFERENCES pessoa_usuaria (pessoa_usuaria_id),
    FOREIGN KEY (cancao) REFERENCES cancao (cancao_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.artista (nome_artista)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

INSERT INTO SpotifyClone.plano (plano_nome, plano_valor)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.pessoa_usuaria (nome_pessoa_usuaria, idade, data_assinatura, plano_pessoa_usuaria)
VALUES
  ('Barbara Liskov', 82, '2019-10-20', 1),
  ('Robert Cecil Martin', 58, '2017-01-06', 1),
  ('Ada Lovelace', 37, '2017-12-30', 4),
  ('Martin Fowler', 46, '2017-01-17', 4),
  ('Sandi Metz', 58, '2018-04-29', 4),
  ('Paulo Freire', 19, '2018-02-14', 2),
  ('Bell Hooks', 26, '2018-01-05', 2),
  ('Christopher Alexander', 85, '2019-06-05', 3),
  ('Judith Butler', 45, '2020-05-13', 3),
  ('Jorge Amado', 58, '2017-02-17', 3);

INSERT INTO SpotifyClone.album (nome_album, artista, ano_lancamento)
VALUES
  ('Renaissance', 1, '2022'),
  ('Jazz', 2, '1978'),
  ('Hot Space', 2, '1982'),
  ('Falso Brilhante', 3, '1998'),
  ('Vento de Maio', 3, '2001'),
  ('QVVJFA?', 4, '2003'),
  ('Somewhere Far Beyond', 5, '2007'),
  ('I Put A Spell On You', 6, '2012');

INSERT INTO SpotifyClone.pessoa_usuaria_seguindo (pessoa_usuaria, artista)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 1),
  (7, 6),
  (9, 3),
  (10, 2);

INSERT INTO SpotifyClone.cancao (nome_cancao, duracao_segundos, album)
VALUES
  ('BREAK MY SOUL', 279, 1),
  ('VIRGO\'S GROOVE', 369, 1),
  ('ALIEN SUPERSTAR', 116, 1),
  ('Don\'t Stop Me Now', 203, 2),
  ('Under Pressure', 152, 3),
  ('Como Nossos Pais', 105, 4),
  ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
  ('Samba em Paris', 267, 6),
  ('The Bard\'s Song', 244, 7),
  ('Feeling Good', 100, 8);
  
INSERT INTO SpotifyClone.historico_reproducao (pessoa_usuaria, cancao, data_reproducao)
VALUES
  (1, 8, "2022-02-28 10:45:55"),
  (1, 2, "2020-05-02 05:30:35"),
  (1, 10, "2020-03-06 11:22:33"),
  (2, 10, "2022-08-05 08:05:17"),
  (2, 7, "2020-01-02 07:40:33"),
  (3, 10, "2020-11-13 16:55:13"),
  (3, 2, "2020-12-05 18:38:30"),
  (4, 8, "2021-08-15 17:10:10"),
  (5, 8, "2022-01-09 01:44:33"),
  (5, 5, "2020-08-06 15:23:43"),
  (6, 7, "2017-01-24 00:31:17"),
  (6, 1, "2017-10-12 12:35:20"),
  (7, 4, "2011-12-15 22:30:49"),
  (8, 4, "2012-03-17 14:56:41"),
  (9, 9, "2022-02-24 21:14:22"),
  (10, 3, "2015-12-13 08:30:22");


