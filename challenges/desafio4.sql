SELECT
  nome_pessoa_usuaria AS pessoa_usuaria,
  IF(YEAR(MAX(hist.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
  SpotifyClone.pessoa_usuaria
LEFT JOIN 
  SpotifyClone.historico_reproducao AS hist
ON
  pessoa_usuaria.pessoa_usuaria_id = hist.pessoa_usuaria
GROUP BY
  nome_pessoa_usuaria
ORDER BY 
  nome_pessoa_usuaria
;