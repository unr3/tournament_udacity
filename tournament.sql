-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
CREATE DATABASE tournament;

CREATE TABLE PLAYER(
	INCKEYNO serial PRIMARY KEY,
	NAME varchar(50) NULL
 
); 

CREATE TABLE game(
	INCKEYNO serial PRIMARY KEY,
	winner_id  int references PLAYER(INCKEYNO),
	loser_id   int references PLAYER(INCKEYNO)
 
); 
 
