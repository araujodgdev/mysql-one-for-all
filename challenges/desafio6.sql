SELECT 
	  FORMAT(MIN(p.plano_valor), 2) AS faturamento_minimo,
    FORMAT(MAX(p.plano_valor), 2)AS faturamento_maximo,
    FORMAT(AVG(p.plano_valor), 2) AS faturamento_medio,
    FORMAT(SUM(p.plano_valor), 2) AS faturamento_total
FROM
	SpotifyClone.plano p
JOIN
	SpotifyClone.pessoa_usuaria pu
ON
	p.plano_id = pu.plano_pessoa_usuaria
;
