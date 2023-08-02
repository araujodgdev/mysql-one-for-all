SELECT
	art.nome_artista AS artista,
    CASE 
		WHEN COUNT(cfav.cancao) >= 5 THEN 'A'
        WHEN COUNT(cfav.cancao) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(cfav.cancao) BETWEEN 1 AND 2 THEN 'C'
        WHEN COUNT(cfav.cancao) <= 0 THEN '-'
	END AS ranking
FROM
	SpotifyClone.artista art
JOIN
	SpotifyClone.album alb
ON 
	art.artista_id = alb.artista
JOIN 
	SpotifyClone.cancao c
ON
	alb.album_id = c.album
LEFT JOIN
	SpotifyClone.cancao_favorita cfav
ON
	c.cancao_id = cfav.cancao
GROUP BY	
	art.nome_artista
ORDER BY
	COUNT(cfav.cancao) DESC, artista ASC
;