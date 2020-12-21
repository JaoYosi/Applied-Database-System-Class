DELETE FROM Movie;
DELETE FROM Actor;
DELETE FROM DCEUCharacter;
DELETE FROM Casting;
DELETE FROM Director;
DELETE FROM IsDirectedBy;
DELETE FROM Genre;
DELETE FROM TieInComic;
DELETE FROM ComicIssue;
DELETE FROM MovieGenre;
DELETE FROM Reviewer;
DELETE FROM MovieRating;
DELETE FROM TieInComicRating;


INSERT INTO Movie
VALUES
('124', 'Batman v Superman: Dawn of Justice', '2016-03-25', 'Charles Roven and Deborah Snyder', '152 minutes', 'USA', '300000000', '873600000'),
('125', 'Suicide Squad', '2016-08-05', 'Charles Roven and Richard Suckle', '123 minutes', 'USA', '175000000', '746800000'),
('126', 'Wonder Woman', '2017-06-02', 'Charles Roven, Deborah Snyder, Zack Snyder, and Richard Suckle', '141 minutes', 'USA', '150000000', '822200000'),
('127', 'Justice League', '2017-11-17', 'Charles Roven, Deborah Snyder, Jon Berg, and Geoff Johns', '120 minutes', 'USA', '300000000', '657900000'),
('128', 'Aquaman', '2018-12-21', 'Peter Safran and Rob Cowan','143 minutes', 'USA', '200000000', '1148000000'),
('129', 'Shazam!', '2019-04-05', 'Peter Safran', '132 minutes', 'USA', '100000000', '366000000'),
('130', 'Birds of Prey', '2020-02-07', 'Margot Robbie, Bryan Unkeless, and Sue Kroll', '109 minutes', 'USA', '100000000', '201800000'),
('131', 'Wonder Woman 1984', '2020-12-25', 'Charles Roven, Deborah Snyder, Zack Snyder, Patty Jenkins, Gal Gadot, and Stephen Jones', '151 minutes', 'USA','200000000', '4600000')
;


INSERT INTO Director
VALUES
('1110', 'Zack', 'Synder'), 
('1111', 'David', 'Ayer'),
('1112', 'Patty', 'Jenkins'),
('1113', 'James', 'Wan'),
('1114', 'David', 'Sandberg'),
('1115', 'Cathy', 'Yan');

INSERT INTO IsDirectedBy
VALUES
('1110', '123'), 
('1110', '124'),
('1111', '125'),
('1112', '126'),
('1110', '127'),
('1113', '128'),
('1114', '129'),
('1115', '130'),
('1112', '131')


 INSERT INTO Genre
 VALUES
 ('20111', 'Fantasy, Adventure, Action'),
 ('20112', 'Sci Fi, Fantasy, Adventure, Action'),
 ('20113','Adventure, Fantasy, Action'),
 ('20114', 'Action, Fantasy, Comedy, Adventure'),
 ('20115', 'Comedy, Action'),
 ('20116', 'Comedy'),
 ('20117', 'Action'),
 ('20118', 'Adventure'),
 ('20119', 'Fantasy'),
 ('20120', 'Sci Fi')
;

 
INSERT INTO MovieGenre
VALUES
('123', '20112'), 
('124','20112' ),
('125','20111'),
('126', '20111'),
('127', '20111'),
('128', '20111'),
('129', '20114'),
('130', '20115'),
('131', '20111')
; 
 
 
INSERT INTO TieInComic
VALUES
('1', '123', 'Man of Steel - Prequel', '1', '20112', 'Sterling Gates', 'Jerry Ordway', '2013-05-18'),
('2', '124 ', 'Batman v Superman: Dawn of Justice', '5', '20112', 'Christos Gage', 'Joe Bennet', '2016-01-28'),
('3', '124', 'Batman v Superman: Dawn of Justice', '4', '20112', 'Jeff Parker, Christos Gage, Marguerite Bennett, and Joshua Williamson', 'R. B. Silva, Federico Dallochio, Marcus To, and Eduardo Pansica', '2016-02-28'),
('4', '124', 'Batman v Superman: Dawn of Justice - Upstairs/Downstairs', '1', '20112', 'Christos Gage', 'Joe Bennet', '2016-02-29'),
('5', '125', 'Suicide Squad: Suicide Blonde', '1', '20111', 'Tony Bedard', 'Tom Derenick, Juan Albarran, Hi-Fi, and Lori Jackson', '2016-06-02'),
('6', '127', 'Mercedes-Benz Presents: Justice League', '6', '20111', 'Adam Schlagman', 'Jason Badower', '2017-11-15'),
('7', '131', 'Wonder Woman 1984: Museum Mayhem', '1', '20111', 'Anna Obropta, Louise Simonson, and Steve Pugh', 'Bret Blevins and Marguerite Sauvage', '2020-09-29')
;
 
 
 
 
 
