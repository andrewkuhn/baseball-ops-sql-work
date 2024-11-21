drop table if exists players, season_hitter_totals, schools, season_pitcher_totals;

create table players (
	player_id VARCHAR(50) primary key,
	lastname VARCHAR(50),
	firstname VARCHAR(50),
	player_school_id VARCHAR(50)
);

insert into players (player_id, lastname, firstname, player_school_id) values
('10001', 'smith', 'andrew', '3'),
('10002', 'ramirez', 'david','3'),
('10003', 'ferguson', 'joshua', '1'),
('10004','thompson', 'joshua', '3'),
('10005', 'smith', 'jacob', '2'),
('10006', 'anderson', 'lucas', '4'),
('10007', 'bishop', 'michael', '4'),
('10008', 'richardson', 'james', '1'),
('10009', 'jefferson', 'evan', '3'),
('10010', 'black', 'thomas', '2'),
('10011', 'jones', 'blake', '3'),
('10012', 'barnes', 'samuel', '2'),
('10013', 'yarborough', 'patrick', '6'),
('10014', 'phillips', 'jonathan', '4'),
('10015', 'johnson', 'eli', '5'),
('10016', 'wilkins', 'peter', '7'),
('10017', 'jones', 'marcus', '6'),
('10018', 'hill', 'paul', '5');

select * from players;

create table season_hitter_totals (
	player_id VARCHAR(50),
	year VARCHAR(50),
	g INT,
	pa INT,
	b1 INT,
	b2 INT,
	b3 INT,
	hr INT,
	so INT,
	bb INT,
	hbp INT,
	sf INT,
	sb INT,
	sba INT,
	primary key (player_id, year)
);

insert into season_hitter_totals (player_id, year, g, pa, b1, b2, b3, hr, so, bb, hbp, sf, sb, sba) values
('10001', '2024', 43, 166, 20, 9, 0, 6, 26, 17, 2, 2, 1, 3),
('10001', '2023', 49, 194, 23, 9, 0 , 3, 35, 23, 6, 3, 0, 1),
('10013', '2024', 40, 173, 28, 11, 2, 8, 27, 18, 3, 3, 1, 3),
('10013', '2023', 44, 122, 21, 2, 0, 2, 27, 13, 0, 1, 2, 2),
('10005', '2024', 59, 246, 52, 11, 1, 7, 31, 27, 2, 3, 0, 0),
('10005', '2023', 43, 155, 22, 3, 2, 2, 42, 15, 10, 2, 4, 9),
('10009', '2024', 58, 267, 61, 11, 0, 9, 31, 31, 8, 9, 5, 5),
('10009', '2023', 24, 81, 10, 3, 0, 0, 19, 9, 3, 1, 0, 0),
('10004', '2024', 44, 167, 28, 4, 1, 6, 28, 22, 3, 1, 12, 14),
('10015', '2024', 41, 191, 38, 12, 1, 9, 26, 20, 3, 3, 1, 2),
('10010', '2024', 38, 175, 24, 14, 1, 2, 40, 14, 5, 1, 15, 17),
('10010', '2023', 42, 203, 35, 11, 2, 10, 31, 14, 5, 3, 0, 3),
('10018', '2024', 55, 189, 27, 10, 0, 4, 46, 19, 1, 3, 0, 0),
('10018', '2023', 61, 289, 44, 12, 0, 3, 59, 41, 10, 2, 5, 8),
('10016', '2024', 31, 107, 12, 4, 1, 4, 37, 19, 3, 1, 0, 0),
('10016', '2023', 42, 173, 26, 6, 1, 5, 33, 13, 8, 6, 0, 0),
('10012', '2024', 50, 216, 33, 8, 1, 2, 26, 23, 13, 1, 2, 4),
('10008', '2024', 56, 221, 26, 10, 1, 14, 64, 21, 4, 0, 8, 8);

select * from SEASON_HITTER_TOTALS;

create table schools (
	school_id VARCHAR(50) primary key,
	name VARCHAR(80),
	city VARCHAR(50),
	state VARCHAR(50)
);

insert into schools (school_id, name, city, state) values
('1', 'arizona state u', 'phoenix', 'az'),
('2', 'barry u', 'miami', 'fl'),
('3', 'chipola col', 'marianna', 'fl'),
('4', 'clemson u', 'clemson', 'sc'),
('5', 'delaware valley u', 'doylestown', 'pa'),
('6', 'eastern florida state col', 'melbourne', 'fl'),
('7', 'gonzaga u', 'spokane', 'wa'),
('8', 'harvard u', 'cambridge', 'ma'),
('9', 'louisiana state u', 'baton rouge', 'la'),
('10', 'middlebury col', 'middlebury', 'vt');

select * from SCHOOLS;

create table season_pitcher_totals (
	player_id VARCHAR(50),
	year VARCHAR(50),
	g INT,
	gs INT,
	ip INT,
	tbf INT,
	ab INT,
	b1 INT,
	b2 INT,
	b3 INT,
	hr INT,
	sf INT,
	so INT,
	bb INT,
	hbp INT,
	r INT,
	er INT,
	PRIMARY KEY (player_id, year)
);

insert into season_pitcher_totals (player_id, year, g, gs, ip, tbf, ab, b1, b2, b3, hr, sf, so, bb, hbp, r, er) values
('10006', '2024', 13, 6, 19, 94, 76, 16, 5, 0, 2, 1, 14, 10, 7, 23, 21),
('10006', '2023', 12, 10, 48.2, 232, 190, 34, 10, 1, 6, 3, 37, 30, 7, 37, 27),
('10002', '2024', 17, 15, 58.2, 279, 239, 44, 13, 1, 19, 3, 40, 28, 6, 56, 52),
('10002', '2023', 12, 0, 19, 86, 72, 6, 3, 0, 7, 0, 13, 13, 1, 17, 13),
('10007', '2024', 13, 13, 70, 329, 276, 44, 17, 1, 8, 5, 46, 35, 6, 37, 28),
('10005', '2023', 13, 1, 10.2, 63, 44, 12, 2, 0, 1, 1, 10, 13, 5, 12, 11),
('10011', '2024', 14, 3, 27.1, 151, 127, 38, 7, 0, 7, 2, 20, 15, 3, 41, 34),
('10011', '2023', 23, 0, 34, 181, 135, 20, 9, 0, 11, 1, 22, 38, 3, 48, 37),
('10004', '2024', 21, 6, 46.1, 236, 198, 45, 8, 4, 6, 2, 30, 23, 11, 51, 41),
('10015', '2024', 9, 4, 15.2, 96, 62, 14, 4, 0, 1, 0, 18, 25, 8, 25, 24),
('10014', '2024', 14, 2, 17.1, 85, 75, 17, 6, 1, 3, 1, 14, 5, 4, 18, 17),
('10014', '2023', 15, 2, 22.2, 129, 98, 22, 9, 0, 4, 4, 15, 23, 4, 29, 26),
('10017', '2024', 23, 4, 55.1, 226, 200, 31, 4, 0, 4, 3, 62, 20, 1, 16, 16),
('10017', '2023', 13, 13, 58.2, 283, 241, 51, 16, 3, 5, 2, 53, 28, 7, 54, 48),
('10003', '2024', 19, 0, 27.2, 131, 100, 8, 7, 0, 1, 0, 39, 22, 9, 11, 7),
('10003', '2023', 25, 0, 40, 188, 163, 31, 7, 1, 5, 1, 43, 17, 5, 33, 28),
('10012', '2024', 20, 5, 45.2, 223, 183, 37, 11, 0, 6, 3, 37, 30, 7, 34, 32),
('10008', '2024', 22, 0, 32, 143, 117, 25, 3, 0, 1, 3, 23, 14, 7, 19, 18);

select * from SEASON_PITCHER_TOTALS;

drop table if exists all_pitcher_data;

create table all_pitcher_data as
select

players.player_id,
players.firstname,
players.lastname,
players.player_school_id,
season_pitcher_totals.year,
season_pitcher_totals.g,
season_pitcher_totals.gs,
season_pitcher_totals.ip,
season_pitcher_totals.tbf,
season_pitcher_totals.ab,
season_pitcher_totals.b1,
season_pitcher_totals.b2,
season_pitcher_totals.b3,
season_pitcher_totals.hr,
season_pitcher_totals.sf,
season_pitcher_totals.so,
season_pitcher_totals.bb,
season_pitcher_totals.hbp,
season_pitcher_totals.r,
season_pitcher_totals.er,
schools.name as school_name,
schools.city,
schools.state

from players
join season_pitcher_totals on players.player_id = season_pitcher_totals.player_id
join schools on players.player_school_id = schools.school_id;

select * from all_pitcher_data;

drop table if exists all_hitter_data;

create table all_hitter_data as
select 

players.player_id,
players.firstname,
players.lastname,
players.player_school_id,
season_hitter_totals.year,
season_hitter_totals.g,
season_hitter_totals.pa,
season_hitter_totals.b1,
season_hitter_totals.b2,
season_hitter_totals.b3,
season_hitter_totals.hr,
season_hitter_totals.so,
season_hitter_totals.bb,
season_hitter_totals.hbp,
season_hitter_totals.sf,
season_hitter_totals.sb,
season_hitter_totals.sba, 
schools.name as school_name,
schools.city,
schools.state

from players
join season_hitter_totals on players.player_id  = season_hitter_totals.player_id
join schools on players.player_school_id = schools.school_id;

select * from all_hitter_data;

-- the questions

-- 5. Using the tables above, write an SQL query to return the player id, school name, and year for hitters who appeared in at least 40 games in one season. *
--Joined Tables:
select player_id, school_name, year
from all_hitter_data
where g >= 40;

-- Separate Tables:
select players.player_id, schools.name as school_name, season_hitter_totals.year
from players
join season_hitter_totals on players.player_id = season_hitter_totals.player_id
join schools on players.player_school_id = schools.school_id
where season_hitter_totals.g >= 40;

-- For the sake of clarity in this example, I would rename the name column to school_name.

-- 6. Using the tables above, write an SQL query to return the school id, average number of plate appearances, and number of season entries for hitters at Chipola Col. *
--Separate Tables:
select schools.school_id, avg(season_hitter_totals.pa) as avg_pa,count(season_hitter_totals.year) as seasons
from season_hitter_totals
join players on season_hitter_totals.player_id = players.player_id
join schools on players.player_school_id = schools.school_id
where schools.name = 'chipola col'
group by schools.school_id;

-- Joined Tables:
select all_hitter_data.player_school_id, avg(pa) as avg_pa, count(year) as seasons
from all_hitter_data
where all_hitter_data.school_name = 'chipola col'
group by player_school_id;


-- 7. Using the tables above, write an SQL query to return the school name, last name, and first name for all pitchers. Order by school name then player last name. Each unique pitcher and school combination should only appear once in your results. *
-- Separate Tables
select distinct schools.name, players.lastname, players.firstname
from players
join schools on players.player_school_id = schools.school_id
join season_pitcher_totals on players.player_id = season_pitcher_totals.player_id
order by schools.name, players.lastname;

select distinct all_pitcher_data.school_name, all_pitcher_data.lastname, all_pitcher_data.firstname
from all_pitcher_data
order by all_pitcher_data.school_name, all_pitcher_data.lastname;


-- 8. Using the tables above, write an SQL query to return the player_id, last name, first name, school name, and year for all players who have rows in both the hitter and pitcher tables for the same year. Order by descending year then by last name. *
-- Separate Tables
select players.player_id, players.lastname, players.firstname, schools.name, season_hitter_totals.year
from season_hitter_totals
join players on season_hitter_totals.player_id = players.player_id
join schools on players.player_school_id = schools.school_id
join season_pitcher_totals on season_hitter_totals.player_id = season_pitcher_totals.player_id and season_pitcher_totals.year = season_hitter_totals.year
order by season_hitter_totals.year desc, season_pitcher_totals.year desc, players.lastname;

-- Joined Tables
select all_hitter_data.player_id, all_hitter_data.lastname, all_hitter_data.firstname, all_hitter_data.school_name, all_hitter_data.year
from all_hitter_data
join all_pitcher_data on all_pitcher_data.player_id = all_hitter_data.player_id and all_pitcher_data.year = all_hitter_data.year
order by all_hitter_data.year desc, all_pitcher_data.year desc, all_hitter_data.lastname;

-- 9. You are asked to return the player id and number of entries for each player in season_hitter_totals. Does the below query return the correctly formatted results? If no, which line(s) needs to be edited, and how would you need to rewrite the query?
-- No.

-- 10.
-- Please explain your thought process for choosing "no": *
-- Grouping by year separates the years as entities and would confuse the count function. To fix it, year needs to be removed from the group by.

select player_id, count(year)
from season_hitter_totals
group by player_id;

-- 11. You are asked to add a new school into the Schools table with the following information:
-- school_id = 11, name = U Mississippi, city = Oxford, state = MS
insert into schools (school_id, name, city, state) values
('11', 'U Uississippi', 'Oxford', 'MS');

select * from schools

-- 12. You are asked to return all player ids and names. You want to format the player names as "lastname, firstname" and name the column as "player." Would the below query give you an error when running? If yes, what edits need to be made for it to run successfully?
-- Yes. 

select player_id, lastname || ', ' || firstname as player
from players;

