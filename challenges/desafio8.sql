SELECT 
	art.nome_artista AS artista,
	alb.nome_album AS album
FROM
	SpotifyClone.artista art
JOIN
	SpotifyClone.album alb
ON
	art.artista_id = alb.artista
WHERE
	nome_artista = "Elis Regina"
;