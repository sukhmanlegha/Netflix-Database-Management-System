use Netflix;

/* List all player's names who have played between 1st Jan 2021 and 1st jan 2022*/
select Signup.FirstName, Signup.Lastname from Signup 
left join GamePlayed 
on Signup.CustomerID=Gameplayed.CustomerID
where Gameplayed.FirstPlayedDate> '2021-01-01' and Gameplayed.FirstPlayedDate <'2022-01-01';

/*What is the average price of all the subscriptions the users have chosen who signed up in USA*/
select avg(Subscription.price) from Subscription
left join signup
on subscription.subscriptionID = signup.subscriptionID
where signup.country ='USA';

/* Name the directors of the movies with rating above 8 */
select Movie.director from content right join movie
on content.ContentID = movie.MContentID
where content.ContentType = 'Movie' and content.contentrating>8;

/*View 1 */
create view SeriesSeasons as
select content.contentrating, content.contentlanguage from content left join series
 on content.ContentID = series.SContentID
where content.ContentType = 'Series';
/* using the view, find out average rating for english language series */
select avg(contentrating) from SeriesSeasons where contentlanguage ='English';

/*View 2 */
create view watchlistmovies as 
select content.contenttitle, watchlistdata.addeddate from content left join watchlistdata
on content.contentid = watchlistdata.contentid;
/* using the view, find the list of titles which were added to watchlist after 1st jan 2016 */
select contenttitle from watchlistmovies where addeddate >'2016-01-01';

/* Stored Procedure 1- get genre of the game based on the title */
DELIMITER // 
CREATE PROCEDURE GetGameGenrebyTitle(IN Gamename varchar(50)) 
BEGIN
select GameGenre from Games 
Where gametitle =Gamename ; END // 
DELIMITER ;
/*using the above stored procedure, find out the genre of the game called Spiritfarer*/
call getgamegenrebytitle('Spiritfarer');

/* Stored Procedure 2 get average rating of the content based on language*/
DELIMITER // 
CREATE PROCEDURE GetavgRatingByLanguage(IN lang varchar(30)) 
BEGIN
select avg(contentrating) from content 
Where contentlanguage =lang ; END // 
DELIMITER ;
/* using the above stored procedure, findout the average rating for all English Content */
call GetavgRatingByLanguage('English');


