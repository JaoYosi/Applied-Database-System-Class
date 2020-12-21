CREATE TABLE IF NOT EXISTS Movie(
	MovieID SERIAL PRIMARY KEY,
    MovieTitle VARCHAR(50) NOT NULL,
    USDateReleased DATE CHECK(USDateReleased > '2010-01-01'),
    ProducerName TEXT NOT NULL,
    RunningTime VARCHAR(20) NOT NULL,
    Country VARCHAR(20),
    Budget DECIMAL(12,2) CHECK (Budget>0),
    BoxOffice DECIMAL(12,2) CHECK(BoxOffice>0)
);

CREATE TABLE IF NOT EXISTS Actor(
    ActorID SERIAL PRIMARY KEY,
    ActorFirstName VARCHAR(20) NOT NULL,
    ActorLastName VARCHAR(20) NOT NULL,
    Gender VARCHAR(50),
    Remark TEXT
);

CREATE TABLE IF NOT EXISTS DCEUCharacter(
    CharacterID SERIAL PRIMARY KEY,
    CharacterName TEXT NOT NULL,
    Ability TEXT,
    Weakness TEXT,
    CharacterType VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Castings(
    MovieID INTEGER NOT NULL,
    ActorID INTEGER NOT NULL,
    CharacterID INTEGER NOT NULL,
    FOREIGN KEY(MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY(ActorID) REFERENCES Actor(ActorID),
    FOREIGN KEY(CharacterID) REFERENCES DCEUCharacter(CharacterID)
);


CREATE TABLE IF NOT EXISTS Director(
    DirectorID SERIAL PRIMARY KEY,
    DirectorFirstName VARCHAR(20) NOT NULL,
    DirectorLastName VARCHAR(20) NOT NULL,
    Remark TEXT
);


CREATE TABLE IF NOT EXISTS IsDirectedBy(
    DirectorID INTEGER NOT NULL,
    MovieID INTEGER NOT NULL,
    FOREIGN KEY(DirectorID) REFERENCES Director(DirectorID),
    FOREIGN KEY(MovieID) REFERENCES Movie(MovieID)
);

CREATE TABLE IF NOT EXISTS Genre(
    GenreID SERIAL PRIMARY KEY,
    GenreTitle TEXT NOT NULL
);

 CREATE TABLE IF NOT EXISTS TieInComic(
	 TieInComicID SERIAL PRIMARY KEY,
	 MovieID INTEGER NOT NULL,
	 ComicTitle VARCHAR(100) NOT NULL,
	 NumberOfIssue INTEGER NOT NULL,
   	 GenreID INTEGER NOT NULL,
	 Writer TEXT,
	 Artist TEXT,
	 PublicationDate DATE CHECK(PublicationDate > '2010-01-01'),
    	 FOREIGN KEY(GenreID) REFERENCES Genre(GenreID) ON DELETE CASCADE,
     	 FOREIGN KEY(MovieID) REFERENCES Movie(MovieID) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS ComicIssue(
    IssueID SERIAL PRIMARY KEY,
    IssueNumber INTEGER NOT NULL UNIQUE,
    IssueTitle VARCHAR(50) NOT NULL,
    GenreID INTEGER NOT NULL,
    Remark TEXT,
    FOREIGN KEY(GenreID) REFERENCES Genre(GenreID)
);


CREATE TABLE IF NOT EXISTS MovieGenre(
    MovieID INTEGER NOT NULL,
    GenreID INTEGER NOT NULL,
    FOREIGN KEY(MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY(GenreID) REFERENCES Genre(GenreID)
);

CREATE TABLE IF NOT EXISTS Reviewer(
    ReviewerID SERIAL PRIMARY KEY,
    ReviewerName TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS MovieRating(
    MovieID INTEGER NOT NULL,
    ReviewerID INTEGER NOT NULL,
    StarRating INTEGER NOT NULL,
    ReviewDetails TEXT NOT NULL,
    FOREIGN KEY(MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY(ReviewerID) REFERENCES Reviewer(ReviewerID)
);

CREATE TABLE IF NOT EXISTS TieInComicRating(
    TieInComicID INTEGER NOT NULL,
    ReviewerID INTEGER NOT NULL,
    StarRating INTEGER NOT NULL,
    TieInComicReviewDetails TEXT NOT NULL,
    FOREIGN KEY(TieInComicID) REFERENCES TieInComic(TieInComicID),
    FOREIGN KEY(ReviewerID) REFERENCES Reviewer(ReviewerID)
);
