SELECT 
	COUNT(hstrc.pessoa_usuaria) AS musicas_no_historico
FROM
	SpotifyClone.historico_reproducao hstrc
JOIN
	SpotifyClone.pessoa_usuaria pu
ON
	hstrc.pessoa_usuaria = pu.pessoa_usuaria_id
WHERE
	pu.nome_pessoa_usuaria = "Barbara Liskov";
  