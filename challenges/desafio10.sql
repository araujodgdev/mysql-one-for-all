-- Descomente e altere as linhas abaixo:

-- CREATE TABLE SpotifyClone.tabela(
--     coluna1 tipo restricoes,
--     coluna2 tipo restricoes,
--     colunaN tipo restricoes,
-- ) engine = InnoDB;

-- INSERT INTO SpotifyClone.tabela (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');

CREATE TABLE SpotifyClone.cancao_favorita (
  cancao INT,
  pessoa_usuaria INT,
  CONSTRAINT PRIMARY KEY (cancao, pessoa_usuaria),
  FOREIGN KEY (cancao) REFERENCES SpotifyClone.cancao (cancao_id),
  FOREIGN KEY (pessoa_usuaria) REFERENCES SpotifyClone.pessoa_usuaria (pessoa_usuaria_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.cancao_favorita (cancao, pessoa_usuaria)
VALUES
  (3, 1),
  (6, 1),
  (10, 1),
  (4, 2),
  (1, 3),
  (3, 3),
  (7, 4),
  (4, 4),
  (10, 5),
  (2, 5),
  (4, 8),
  (7, 9),
  (3, 10);

