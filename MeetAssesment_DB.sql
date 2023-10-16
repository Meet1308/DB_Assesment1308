create database ass_DB;

use ass_DB;

create table Nobel_win(
Years int not null,
Subjects varchar(20),
Winner varchar(50),
Country varchar(20),
Category varchar(20)
);

insert into Nobel_win 
values(1970,"Physics","Hannes Alfven", "Sweden", "Scientist");

insert into Nobel_win 
values(1970,"Physics","Louis Neel", "France", "Scientist"),
(1970,"Chemistry","Luis Federico Leloir", "France", "Scientist"),
(1970,"Physiology","Ulf von Euler", "Sweden", "Scientist"),
(1970,"Physiology","Bernard Katz", "Germany", "Scientist"),
(1970,"Literature","Aleksandr Solzhenitsyn", "Russia", "Linguist"),
(1970,"Economics","Paul Samuelson", "USA", "Economist"),
(1970,"Physiology","Julius Axelrod", "USA", "Scientist"),
(1971,"Physics","Dennis Gabbor", "Hungary", "Scientist"),
(1971,"Chemistry","Gerhard Herzberg", "Germany", "Scientist"),
(1971,"Peace","Willy Brandt", "Germany", "Chancellor"),
(1971,"Literature","Pablo Neruda", "Chile", "Linguist"),
(1971,"Economics","Simon Kuznets", "Russia", "Economist"),
(1978,"Peace","Anwar al-Sadat", "Egypt", "President"),
(1978,"Peace","Menachem Begin", "Israel", "Prime Minister"),
(1987,"Chemistry","Donald J. Cram", "USA", "Scientist"),
(1987,"Chemistry","Jean-Marie Lehn", "France", "Scientist"),
(1987,"Physiology","Susumu Tonegawa", "Japan", "Scientist"),
(1994,"Economics","Reinhard Selten", "Germany", "Economist"),
(1994,"Peace","Yitzhak Rabin", "Israel", "Prime Minister"),
(1987,"Physics","Johannes Georg Bednorz", "Germany", "Scientist"),
(1987,"Literature","Joseph Brodsky", "Russia", "Linguist"),
(1987,"Economics","Robert Solow", "USA", "Economist"),
(1994,"Literature","KenZaburo Oe", "Japan", "Linguist");

select * from Nobel_win;


-- Query - 1 :-
select Years,Subjects,Winner from Nobel_win
where Years=1970;

-- Query - 2 :-
select Years,Subjects,Winner,Country from Nobel_win
where Subjects="Chemistry" and 
Years between 1965 and 1975; 

-- Query - 3 :-
select Years,Subjects,Winner,Country from Nobel_win
where Winner like "Louis%";

-- Query - 4 :-
select Years,Winner from Nobel_win
where Winner not like "%P"
order by Years desc;

-- Query - 5 :-
select Years,Subjects,Winner,Country,Category from Nobel_win
where Years=1970 order by Subjects; 




