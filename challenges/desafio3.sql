use SpotifyClone;

SELECT
	nome_pessoa_usuaria AS pessoa_usuaria,
    COUNT(pessoa_usuaria) AS musicas_ouvidas,
    ROUND(SUM(duracao_segundos) / 60, 2) AS total_minutos
FROM
	SpotifyClone.pessoa_usuaria
JOIN
	SpotifyClone.historico_reproducao
ON
	historico_reproducao.pessoa_usuaria = pessoa_usuaria.pessoa_usuaria_id
JOIN
	SpotifyClone.cancao
ON
	cancao.cancao_id = historico_reproducao.cancao
GROUP BY 
	pessoa_usuaria
ORDER BY
	pessoa_usuaria
;