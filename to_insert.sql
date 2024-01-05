/*enter the values into GAMES table*/
use Netflix;
INSERT INTO GAMES (GameID, GameGenre, GameTitle, GameReleaseDate) VALUES
(1,'Adventure','Stranger Things 1984','2019-01-01'),
(2,'cooking','Is it cake','2019-02-19'),
(3,'cooking','The great british bake off','2020-12-01'),
(4,'Thriller','Stranger Things: Puzzle Tales','2021-12-07'),
(5,'puzzle','Stranger Things: Puzzle Tales','2020-10-09'),
(6,'simulation ','Flutter Butterflies','2019-11-07'),
(7,'simulation','Skies of Chaos','2019-07-07'),
(8,'cooking','Nailed It! Baking Bash','2022-08-06'),
(9,'Simulation','Spiritfarer','2022-11-07'),
(10,'Cooking','Spongebob: Squarepants Get Cooking!','2020-03-04'),
(11,'Card','Heads Up!','2020-06-07'),
(12,'Adventure','Before your eyes','2021-06-04'),
(13,'Card','Mahjong Solitaire','2020-02-04'),
(14,'Puzzle','Poinpy','2019-12-09'),
(15,'Adventure', 'The Witcher','2022-11-09'),
(16,'Card','Card Blast','2019-10-12'),
(17,'Thriller','Into the breach','2019-10-11'),
(18,'Simulation','Skylines','2019-02-09'),
(19,'Cooking','Baking Master','2019-11-11'),
(20,'Adventure','Twelve Minutes','2019-12-11');

/*enter the values into SUBSCRIPTION table*/
 INSERT INTO Subscription (SubscriptionID, Price, NumberofDevices,Definition) VALUES
(235577, 225.32, 9, 'HD'),
(324881, 119.34, 1, 'FHD'),
(348382, 274.87, 8, 'HD'),
(277786, 40.11, 1, 'UHD'),
(422281, 286, 4, 'HD'),
(188483, 162.66, 8, 'UHD'),
(200725, 204.75, 7, 'HD'),
(306802, 136.28, 10, 'UHD'),
(363890, 317.32, 9, 'FHD'),
(290517, 298.64, 8, 'UHD'),
(416802, 315.28, 7, 'UHD'),
(352271, 171.17, 10, 'FHD'),
(220995, 167.36, 1, 'HD'),
(269656, 265.86, 12, 'UHD'),
(312247, 205.87, 9, 'HD'),
(336218, 175.92, 12, 'UHD'),
(298751, 213.65, 10, 'HD'),
(415052, 240.91, 1, 'FHD'),
(166806, 67.92, 13, 'UHD'),
(263504, 52.39, 4, 'HD');

/*enter the values into WATCHLIST table*/
 INSERT INTO WATCHLIST(WatchlistID, NumberofTitles) VALUES
(18371, 23),
(45318, 21),
(36146, 30),
(20847, 36),
(40985, 27),
(25882, 34),
(29396, 39),
(33215, 97),
(29646, 45),
(38227, 35),
(38475, 56),
(20146, 12),
(37172, 20),
(39347, 14),
(26604, 84),
(24196, 15),
(30602, 24),
(28893, 18),
(32291, 30),
(35274, 27);

/*enter the values into SIGNUP  table*/
 INSERT INTO Signup (CustomerID, MobileNumber, SignupDevice, PrimaryLanguage, SignupDate, FirstName, LastName, Country, SubscriptionID) VALUES
(101, 1234567890, 'Laptop', 'English', '2018-07-08', 'John', 'Doe', 'USA', 235577),
(102, 1454567890, 'Mobile', 'Spanish', '2017-03-11', 'Bill', 'Doll', 'Spain', 235577),
(103, 1134567890, 'TV', 'Hindi', '2016-03-11', 'Josh', 'Turban', 'India', 235577),
(104, 1832456789, 'TV', 'Telugu', '2020-03-11', 'Mary', 'Lee', 'USA', 324881),
(105, 1774567890, 'Laptop', 'English', '2010-12-10', 'Kenya', 'Sosa', 'India', 324881),
(106, 1444567890, 'TV', 'Spanish', '2019-12-10', 'Ricardo', 'Sultan', 'Spain', 352271),
(107, 1234544890, 'Mobile', 'English', '2017-11-08', 'May Millicent', 'Welch', 'USA', 352271),
(108, 1234567890, 'TV', 'Hindi', '2017-07-08', 'Jerica', 'Austin', 'USA', 352271),
(109, 1234567890, 'Laptop', 'English', '2022-10-08', 'Kenia', 'Bishop', 'USA', 269656),
(110, 1234567890, 'Mobile', 'Hindi', '2016-07-08', 'Tamesha', 'Cardenas', 'USA', 269656),
(111, 1234567890, 'Laptop', 'Spanish', '2017-11-08', 'Talia', 'Montalvo Palafox', 'Spain', 415052),
(112, 1234777890, 'Mobile', 'Hindi', '2018-07-08', 'Steven', 'Nava', 'India', 415052),
(113, 1934567890, 'TV', 'English', '2019-07-08', 'Erick', 'Bernardo-Martinez', 'USA', 263504),
(114, 1234567845, 'Laptop', 'English', '2021-07-08', 'Stephanie', 'Owens', 'USA', 263504),
(115, 1234567890, 'Mobile', 'Hindi', '2018-07-08', 'Shianna', 'Orozco', 'USA', 269656),
(116, 1334567890, 'Laptop', 'English', '2012-11-08', 'Spozhmey', 'Andrade', 'USA', 269656),
(117, 1234567890, 'TV', 'Hindi', '2016-11-07', 'Nidia', 'Fischer ', 'USA', 269656),
(118, 1234567890, 'Mobile', 'English', '2022-09-29', 'Samantha', 'Hasnain Khan', 'India', 352271),
(119, 1234567890, 'TV', 'English', '2021-12-28', 'Kate', 'Smith', 'India', 352271),
(120, 1234567890, 'Mobile', 'English', '2019-07-08', 'Andrea', 'Edwards', 'India', 352271);

/*enter the values into GAME_PLAYED table*/
 INSERT INTO GAMEPLAYED (CustomerID, GameID,FirstPlayedDate) VALUES
(101, 1, '2021-07-08'),
(102, 1, '2019-03-11'),
(103, 2, '2019-03-11'),
(104, 3, '2021-03-11'),
(105, 5, '2021-12-10'),
(106, 10, '2021-12-10'),
(107, 5, '2022-11-08'),
(108, 6, '2021-07-08'),
(109, 13, '2022-11-08'),
(110, 12, '2021-07-08'),
(111, 16, '2022-11-08'),
(112, 4, '2022-07-08'),
(113, 12, '2021-07-08'),
(114, 3, '2021-07-08'),
(115, 2, '2021-07-08'),
(116, 20, '2022-11-08'),
(117, 8, '2022-11-07'),
(118, 8, '2022-09-29'),
(119, 9, '2022-12-28'),
(120, 10, '2021-07-08');

/*enter the values into PAYMENT  table*/
 INSERT INTO PAYMENT (SubscriptionID,CustomerID,PaymentType,CardNo,CVV, CardHolderName,ExpiryDate) VALUES
(235577, 101, 'Credit', 123456789, 208, 'John Doe', '2027-07-08'),
(235577, 102, 'Credit', 567897865, 809, 'Bill Doll', '2025-03-11'),
(235577, 103, 'Debit', 123456789, 457, 'Josh Turban', '2026-03-11'),
(324881, 104, 'Debit', 56789786, 754, 'Mary Lee', '2028-03-11'),
(324881, 105, 'Debit', 12345678, 432, 'Kenya Sosa', '2027-12-10'),
(352271, 106, 'Credit', 78987472, 567, 'Ricardo Sultan', '2023-12-10'),
(352271, 107, 'Credit', 56789786, 542, 'May Millicent Welch', '2029-11-08'),
(352271, 108, 'Debit', 78987472, 246, 'Jerica Austin', '2027-07-08'),
(269656, 109, 'Debit', 12345678, 346, 'Kenia Bishop', '2026-10-08'),
(269656, 110, 'Credit', 78987472, 450, 'Tamesha Cardenas', '2024-07-08'),
(415052, 111, 'Debit', 12345678, 421, 'Talia Montalvo Palafox', '2024-11-08'),
(415052, 112, 'Credit', 56789786, 532, 'Steven Nava', '2026-07-08'),
(263504, 113, 'Debit', 78987472, 246, 'Erick Bernardo-Martinez', '2026-07-08'),
(263504, 114, 'Credit', 12345678, 753, 'Stephanie Owens', '2024-07-08'),
(269656, 115, 'Debit', 78987472, 344, 'Shianna Orozco', '2025-07-08'),
(269656, 116, 'Debit', 12345678, 234, 'Spozhmey Andrade', '2024-11-08'),
(269656, 117, 'Credit', 56789786, 234, 'Nidia Fischer ', '2026-11-07'),
(352271, 118, 'Credit', 78987472, 121, 'Samantha Hasnain Khan', '2022-09-29'),
(352271, 119, 'Credit', 32636363, 111, 'Kate Smith', '2026-12-28'),
(352271, 120, 'Debit', 26897645, 134, 'Andrea Edwards', '2027-07-08');

/*enter the values into LOGIN  table*/
 INSERT INTO Login (SessionID, LoginTime,LogoutTime,LoginDeviceType,CustomerID	) VALUES
(11001, '2020-09-21', '2020-10-11', 'Mobile', 101),
(11002, '2018-10-11', '2020-11-07', 'Mobile', 102),
(11003, '2020-11-07', '2021-11-09', 'TV', 103),
(11004, '2019-04-09', '2021-05-03', 'Laptop', 104),
(11005, '2021-04-03', '2021-05-29', 'Laptop', 105),
(11006, '2021-03-29', '2021-04-08', 'Laptop', 106),
(11007, '2019-04-08', '2020-08-29', 'Laptop', 107),
(11008, '2020-08-29', '2020-09-20', 'Laptop', 108),
(11009, '2018-06-20', '2018-07-01', 'Mobile', 109),
(11010, '2017-07-01', '2021-02-03', 'Mobile', 110),
(11011, '2021-02-03', '2022-06-25', 'Mobile', 111),
(11012, '2019-06-25', '2020-03-08', 'Mobile', 112),
(11013, '2017-03-08', '2021-09-19', 'TV', 113),
(11014, '2021-09-19', '2021-10-22', 'TV', 114),
(11015, '2020-05-22', '2020-10-16', 'TV', 115),
(11016, '2019-10-16', '2019-10-24', 'Mobile', 116),
(11017, '2017-10-04', '2021-06-29', 'Laptop', 117),
(11018, '2019-01-04', '2021-11-23', 'Mobile', 118),
(11019, '2021-06-29', '2021-07-04', 'Mobile', 119),
(11020, '2021-11-23', '2021-12-09', 'TV', 120);

/*enter the values into PROFILE_SELECTED table*/
 INSERT INTO PROFILESELECTED (ProfileID, ProfileName, SessionID) VALUES
(1000001, 'Kenya', 11001),
(1000002, 'Bill', 11002),
(1000003, 'Josh', 11003),
(1000004, 'kids', 11004),
(1000005, 'Ricardo', 11005),
(1000006, 'Jerica', 11006),
(1000007, 'Talia', 11007),
(1000008, 'kids', 11008),
(1000009, 'Shianna', 11009),
(1000010, 'Tamesha', 11010),
(1000011, 'Andrea', 11011),
(1000012, 'Samantha', 11012),
(1000013, 'kids', 11013),
(1000014, 'Erick', 11014),
(1000015, 'Stephanie', 11015),
(1000016, 'Nidia', 11016),
(1000017, 'Kate', 11017),
(1000018, 'Andrea', 11018),
(1000019, 'John', 11019),
(1000020, 'Kenia', 11020);

/*enter the values into CONTENT table*/
 INSERT INTO CONTENT(ContentID, ContentTitle,ContentGenre,ContentLanguage,ContentReleaseDate,ContentRating,ContentType,ProfileID) VALUES
(6716, 'Vikram', 'Thriller', 'English', '2017-01-08', 7.3, 'Movie',1000001),
(6717, 'Dark', 'Action', 'English', '2019-09-05', 9.1, 'Series',1000002),
(6718, 'Bad boys', 'Romance', 'English', '2016-09-18', 7.3, 'Movie',1000003),
(6719, 'The 100', 'Scifi', 'English', '2020-09-06', 6.5, 'Series',1000004),
(6720, 'Ghost', 'Crime', 'English', '2021-08-11', 6.9, 'Movie',1000005),
(6721, 'Money Heist', 'Children & Family', 'Korean ', '2013-06-13', 5.7, 'Series',1000006),
(6722, 'Zombies', 'Horror', 'Korean ', '2017-01-08', 8.4, 'Series',1000007),
(6723, 'Fast and Furious', 'Crime', 'English', '2015-09-17', 7.3, 'Movie',1000008),
(6724, 'RRR', 'Children & Family', 'English', '2010-07-17', 8.9, 'Movie',1000009),
(6725, 'What If?', 'Thriller', 'English', '2022-09-09', 8.5, 'Movie',1000010),
(6726, 'Brooklyn 99', 'Dramas', 'English', '2009-10-14', 7.3, 'Series',1000011),
(6727, 'Squid Games', 'Horror', 'English', '2017-01-08', 7.8, 'Movie',1000012),
(6728, '1948', 'Dramas', 'German', '2008-09-12', 8.3, 'Series',1000013),
(6729, 'Asuran', 'Children & Family', 'English', '2008-12-12', 8.3, 'Series',1000014),
(6730, 'Kala Chashma', 'Thriller', 'German', '2009-07-19', 6.9, 'Movie',1000015),
(6731, 'Independence Day', 'Dramas', 'English', '2019-08-10', 7.4, 'Movie',1000016),
(6732, 'Orphan', 'Horror', 'English', '2019-02-04', 9.2, 'Movie',1000017),
(6733, 'Breaking Bad', 'Thriller', 'English', '2017-01-08', 8.9, 'Series',1000018),
(6734, 'Friends', 'Children & Family', 'English', '2017-09-23', 8.5, 'Movie',1000019),
(6735, 'Breathe', 'Thriller', 'English', '2021-12-10', 7.9, 'Movie',1000020),
(6736, 'Bakers Dozen', 'Thriller', 'English', '2021-12-11', 7.9, 'Series',1000006),
(6737, 'Godfather of Harlem', 'Thriller', 'English', '2021-12-12', 7.9, 'Series',1000007),
(6738, 'Pen-15', 'Action', 'English', '2021-12-13', 7.9, 'Series',1000008),
(6739, 'Power', 'Action', 'English', '2021-12-14', 7.9, 'Series',1000009),
(6740, 'Wednesday', 'Children & Family', 'English', '2021-12-15', 7.9, 'Series',1000010),
(6741, 'Warrior Nun', 'Horror', 'English', '2021-12-16', 7.9, 'Series',1000011),
(6742, 'Inside Man', 'Children & Family', 'English', '2021-12-17', 7.9, 'Series',1000012),
(6743, 'The Watcher', 'Thriller', 'English', '2021-12-18', 7.9, 'Series',1000010),
(6744, 'Game of Thrones', 'Action', 'English', '2021-12-19', 7.9, 'Series',1000011),
(6745, 'Down town abby', 'Dramas', 'English', '2021-12-20', 7.9, 'Series',1000012),
(6746, 'Sabrina', 'Horror', 'English', '2021-12-21', 7.9, 'Series',1000013),
(6747, 'Whats Wrong with her', 'Romance', 'English', '2021-12-22', 7.9, 'Series',1000014),
(6748, 'the pursuit of happyness', 'Dramas', 'English', '2017-08-25', 8.1, 'Movie',1000015),
(6749, 'Beauty and the beast', 'Musical', 'English', '2020-03-21', 8.4, 'Movie',1000016),
(6750, 'The greatest showman', 'Musical', 'English', '2018-05-18', 8.1, 'Movie',1000017),
(6751, '17 Again', 'Comedy', 'English', '2019-02-12', 7.9, 'Movie',1000018),
(6752, 'wonder', 'Children & Family', 'English', '2017-05-18', 9.2, 'Movie',1000019),
(6753, 'Easy A', 'Comedy', 'English', '2016-09-17', 8.6, 'Movie',1000010),
(6754, 'LaLaLand', 'Musical', 'English', '2018-08-08', 8.8, 'Movie',1000011),
(6755, 'The Shawshank Redemption', 'Dramas', 'English', '2008-03-29', 9.3, 'Movie',1000012),
(6756, '21', 'Dramas', 'English', '2018-06-17', 7.4, 'Movie',1000013);


 INSERT INTO WATCHLISTdata(WatchlistID,ContentID,AddedDate) VALUES
(18371, 6716, '2016-10-11'),
(45318, 6717, '2016-09-21'),
(36146, 6718, '2016-10-01'),
(20847, 6719, '2015-01-11'),
(40985, 6720, '2016-02-11'),
(25882, 6721, '2016-03-11'),
(29396, 6722, '2016-04-21'),
(33215, 6723, '2016-05-13'),
(29646, 6724, '2016-05-14'),
(38227, 6725, '2016-02-06'),
(38475, 6726, '2016-01-09'),
(20146, 6727, '2016-04-17'),
(37172, 6728, '2013-10-11'),
(39347, 6729, '2014-01-21'),
(26604, 6730, '2015-10-11'),
(24196, 6731, '2015-10-11'),
(30602, 6732, '2016-08-11'),
(28893, 6733, '2016-08-09'),
(32291, 6734, '2016-01-01'),
(35274, 6735, '2015-01-01');

/*enter the values into MOVIE table*/
 INSERT INTO MOVIE(MContentID, Director) VALUES
(6716, 'David fincher'),
(6718, 'Stephen Chobsky'),
(6720, 'Quentin tarantino'),
(6723, 'james cameron'),
(6724, 'angelina jolie'),
(6725, 'olivia wilde'),
(6727, 'christopher nolan'),
(6730, 'christopher mccarry'),
(6731, 'michael gracey'),
(6732, 'james mangold'),
(6734, 'steven spielberg'),
(6735, 'martin scorsese'),
(6748, 'stanley kubrick'),
(6749, 'spike lee'),
(6750, 'ridley scott'),
(6751, 'ang lee'),
(6752, 'woody allen'),
(6753, 'steven soderbergh'),
(6754, 'peter jackson'),
(6755, 'greta gerwig');

/*enter the values into SERIES table*/
 INSERT INTO SERIES(SContentID, Season, Episode) VALUES
(6717, 4, 12),
(6719, 5, 16),
(6721, 5, 8),
(6722, 6, 14),
(6726, 7, 17),
(6728, 7, 13),
(6729, 2, 19),
(6733, 3, 6),
(6736, 2, 7),
(6737, 3, 13),
(6738, 6, 15),
(6739, 4, 14),
(6740, 5, 15),
(6741, 6, 16),
(6742, 3, 18),
(6743, 5, 10),
(6744, 2, 12),
(6745, 6, 14),
(6746, 3, 15),
(6747, 6, 18);
