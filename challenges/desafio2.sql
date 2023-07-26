USE SpotifyClone;

SELECT
	COUNT(DISTINCT cancao.cancao_id) cancoes,
  COUNT(DISTINCT artista.artista_id) artistas,
  COUNT(DISTINCT album.album_id) albuns
FROM
	SpotifyClone.album
JOIN 
	SpotifyClone.cancao
ON 
	album.album_id = cancao.album
JOIN
	SpotifyClone.artista
ON 
	album.artista = artista.artista_id
;