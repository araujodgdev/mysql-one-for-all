SELECT
  alb.nome_album AS album,
  COUNT(fav.cancao) AS favoritadas
FROM
  SpotifyClone.album alb
JOIN
  SpotifyClone.cancao c
ON
  alb.album_id= c.album
JOIN 
  SpotifyClone.cancao_favorita fav
ON
  c.cancao_id = fav.cancao
GROUP BY
  album
ORDER BY
  favoritadas DESC, album
LIMIT 3
;