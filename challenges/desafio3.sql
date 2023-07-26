SELECT
	pu.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(histr.pessoa_usuaria) AS musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM
	SpotifyClone.pessoa_usuaria pu
JOIN
	SpotifyClone.historico_reproducao histr
ON
	pu.pessoa_usuaria_id = histr.pessoa_usuaria
JOIN
	SpotifyClone.cancao c
ON
	histr.cancao = c.cancao_id
GROUP BY 
	pessoa_usuaria
ORDER BY
	pessoa_usuaria
;