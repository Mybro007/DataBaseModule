CREATE TABLE IF NOT EXISTS Janre(
	janre_id INTEGER PRIMARY KEY,
	janre_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Author(
	author_id INTEGER PRIMARY KEY,
	nickname TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS AuthorsJanres(
	author_id INTEGER REFERENCES Author(author_id),
	janre_id int references Janre(janre_id)
);

CREATE TABLE IF NOT EXISTS Album(
	album_id INTEGER PRIMARY KEY,
	album_name TEXT NOT NULL,
	album_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS AuthorsAlbums(
	author_id INTEGER REFERENCES Author(author_id),
	janre_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track(
	track_id INTEGER PRIMARY KEY,
	title TEXT NOT NULL, 
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Colection(
	collection_id INTEGER PRIMARY KEY,
	collection_name TEXT NOT NULL,
	collection_year INTEGER NOT NULL,
	track_id INTEGER REFERENCES Track(track_id)
);

CREATE TABLE IF NOT EXISTS CollectionsTracks(
	collection_id INTEGER REFERENCES Colection(collection_id),
	track_id INTEGER REFERENCES Track(track_id)
);