Relational Schema for DCEUMovieDB
-
Movie (MovieID, MovieTitle, USDateReleased, ProducerName, RunningTime, Country, Budget, BoxOffice)

Actor (ActorID, ActorFirstName, ActorLastName, Gender, Remark)

DCEUCharacter (CharacterID, CharacterName, Ability, Weakness, CharacterType)

Casting (MovieID, ActorID, CharacterID)

Director (DirectorID, DirectorFirstName, DirectorLastName, Remark)

IsDirectedBy (DirectorID, MovieID)

Genre (GenreID, GenreTitle)

TieInComic (TieInComicID, MovieID, ComicTitle, NumberOfIssue, GenreID, Writer, Artist, PublicationDate)

ComicIssue (IssueID, IssueNumber, IssueTitle, GenreID, Remark)

MovieGenre (MovieID, GenreID)

Reviewer (ReviewerID, ReviewerName)

MovieRating (MovieID, ReviewerID, StarRating, ReviewDetails)

TieInComicRating(TieInComicID, ReviewerID, StarRating, TieInComicReviewDetails)
