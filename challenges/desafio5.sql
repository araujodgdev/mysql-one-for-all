SELECT 
	c.nome_cancao AS cancao,
    COUNT(histr.cancao) AS reproducoes
FROM
	SpotifyClone.cancao c
JOIN 
	SpotifyClone.historico_reproducao histr
ON
	c.cancao_id = histr.cancao
GROUP BY
	cancao
ORDER BY 
	reproducoes DESC, cancao
LIMIT 2
;