USE SpotifyClone;

SELECT
	COUNT(cancao.cancao_id) cancoes,
  COUNT(artista.artista_id) artistas,
  COUNT(album.album_id) albuns
FROM
	spotifyclone.album
JOIN 
	spotifyclone.cancao
ON 
	album.album_id = cancao.album
JOIN
	spotifyclone.artista
ON 
	album.artista = artista.artista_id
;