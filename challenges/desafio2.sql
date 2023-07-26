SELECT
	COUNT(DISTINCT c.cancao_id) cancoes,
  COUNT(DISTINCT art.artista_id) artistas,
  COUNT(DISTINCT alb.album_id) albuns
FROM
	SpotifyClone.artista art
JOIN 
	SpotifyClone.album alb
ON 
	alb.artista = art.artista_id
JOIN
	SpotifyClone.cancao c
ON 
	c.album = alb.album_id
;