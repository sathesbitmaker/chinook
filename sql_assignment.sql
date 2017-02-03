-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
 SELECT title FROM albums WHERE artist_id = 51;
 -- these are equivalent
 SELECT title FROM albums WHERE artist_id = ( SELECT id FROM artists WHERE name LIKE 'Queen')

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT COUNT(*) FROM tracks WHERE media_type_id = 3;

-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT id FROM genres WHERE name LIKE 'Electronica/Dance';
SELECT * FROM tracks WHERE genre_id = 15 ORDER by unit_price;

-- 4) Find the all the artists whose names start with A.
SELECT * FROM artists WHERE name LIKE 'A%';


-- 5) Find all the tracks that belong to playlist 1.
SELECT track_id FROM playlists_tracks WHERE playlist_id = 1;

 -- select all files from tracks
SELECT * FROM tracks INNER JOIN playlists_tracks ON ( playlists_tracks.track_id = tracks.id AND playlists_tracks.playlist_id = 1 ); 
