SELECT
	art.nome_artista AS artista,
    alb.nome_album AS album,
    COUNT(ps.artista) AS pessoas_seguidoras
FROM
	SpotifyClone.artista art
JOIN 
	SpotifyClone.album alb
ON
	art.artista_id = alb.artista
JOIN
	SpotifyClone.pessoa_usuaria_seguindo ps
ON
	art.artista_id = ps.artista
GROUP BY
	artista, album
ORDER BY
	pessoas_seguidoras DESC, artista, album
;