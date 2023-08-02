SELECT
	CASE
		WHEN idade <= 30 THEN 'Até 30 anos'
        WHEN idade BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        WHEN idade > 60 THEN 'Maior de 60 anos'
	END AS faixa_etaria,
    COUNT(DISTINCT pu.pessoa_usuaria_id) AS total_pessoas_usuarias,
    COUNT(cfav.pessoa_usuaria) AS total_favoritadas
FROM
	SpotifyClone.pessoa_usuaria pu
LEFT JOIN
	SpotifyClone.cancao_favorita cfav
ON
	pu.pessoa_usuaria_id = cfav.pessoa_usuaria
GROUP BY
	faixa_etaria
ORDER BY 
	faixa_etaria
;