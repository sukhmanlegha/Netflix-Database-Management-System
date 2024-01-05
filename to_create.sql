Create database Netflix;
use Netflix;

CREATE TABLE Games
(GameID int(11) not null auto_increment,
GameGenre varchar(11),
GameTitle varchar(50) not null,
GameReleaseDate date, 
CONSTRAINT game_pk PRIMARY KEY (GameID));

Create table Subscription
(SubscriptionId int(11) not null auto_increment,
Price float(11) not null,
NumberofDevices int(3)  not null,
Definition varchar(11) not null,
Constraint subscription_pk Primary Key (SubscriptionID));
	
Create table Watchlist
(WatchlistID int(11) not null auto_increment,
NumberofTitles int(5),
Constraint watchlist_pk Primary Key (WatchlistID));

Create table SignUp
(CustomerID int(11) not null auto_increment,
MobileNumber int(10),
SignupDevice Varchar(10) not null,
PrimaryLanguage varchar(10) not null,
SignupDate date not null,
FirstName varchar(20),
LastName varchar(20),
Country varchar(30),
SubscriptionID int(11) not null,
constraint signup_pk primary key (CustomerID),
constraint signup_fk FOREIGN KEY(SubscriptionID) REFERENCES Subscription(SubscriptionID));

Create table GamePlayed
(CustomerID int(11) not null,
GameID int(11) not null,
FirstPlayedDate date not null,
CONSTRAINT gameplayed_pk PRIMARY KEY (CustomerID, GameID),
CONSTRAINT gameplayed_fk1 FOREIGN KEY (CustomerID) REFERENCES SignUp(CustomerID)
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT gameplayed_fk2 FOREIGN KEY (GameID) REFERENCES Games(GameID)
ON UPDATE CASCADE ON DELETE CASCADE);

Create table Payment
(SubscriptionID int(11) not null,
CustomerID int(11) not null,
PaymentType varchar(30) not null,
CardNo int(16) not null,
CVV int(4) not null,
CardHolderName varchar(30) not null,
ExpiryDate date not null,
CONSTRAINT payment_pk PRIMARY KEY (CustomerID, SubscriptionID),
CONSTRAINT payment_fk1 FOREIGN KEY (CustomerID) REFERENCES SignUp(CustomerID)
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT payment_fk2 FOREIGN KEY (SubscriptionID) REFERENCES Subscription(SubscriptionID)
ON UPDATE CASCADE ON DELETE CASCADE);

Create table Login
(SessionID int(11) not null auto_increment,
LoginTime date not null,
LogoutTIme date not null,
LoginDeviceType varchar(30) not null,
CustomerID int(11) not null,
CONSTRAINT login_pk PRIMARY KEY (SessionID),
constraint login_fk FOREIGN KEY(CustomerID) REFERENCES SignUp(CustomerID));

Create table ProfileSelected
(ProfileID int(11) not null auto_increment,
ProfileName varchar(30),
SessionID int(11) not null,
CONSTRAINT profile_pk PRIMARY KEY (ProfileID),
constraint profile_fk FOREIGN KEY(SessionID) REFERENCES Login(SessionID));

Create table Content
(ContentID int(11) not null auto_increment,
ContentTitle varchar(30) not null,
ContentGenre varchar(30),
ContentLanguage varchar(30) not null,
ContentReleaseDate date not null,
ContentRating float(5),
ContentType varchar(30) not null,
ProfileID int(11) not null,
CONSTRAINT content_pk PRIMARY KEY (ContentID),
constraint content_pk FOREIGN KEY(ProfileID) REFERENCES ProfileSelected(ProfileID));

Create table WatchlistData
(WatchlistID int(11) not null,
ContentID int(11) not null,
AddedDate date not null,
CONSTRAINT watchlistdata_pk PRIMARY KEY (WatchlistID, ContentID),
CONSTRAINT watchlistdata_fk1 FOREIGN KEY (WatchlistID) REFERENCES Watchlist(WatchlistID)
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT watchlistdata_fk2 FOREIGN KEY (ContentID) REFERENCES Content(ContentID)
ON UPDATE CASCADE ON DELETE CASCADE);

Create table Movie
(MContentID int(11) not null,
Director varchar(30),
CONSTRAINT movie_pk PRIMARY KEY (MContentID),
constraint movie_fk FOREIGN KEY(MContentID) REFERENCES Content(ContentID));

Create table Series
(SContentID int(11) not null,
Season int(3) not null,
Episode int(3) not null,
CONSTRAINT series_pk PRIMARY KEY (SContentID),
constraint series_fk FOREIGN KEY(SContentID) REFERENCES Content(ContentID));

