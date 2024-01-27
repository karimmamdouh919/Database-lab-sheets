select name from player;

select name, no from player;

select name
from player
where name like '%ss%';

select name, team_name
from player;

select name, team_name
from player
where no = 22;

select home_team, home_score, away_score, away_team
 from game
 where home_score > away_score;

select par.game_no, g.home_team, p.name
from participate par, game g, player p, team t
where par.game_no = g.no and par.player_ssn = p.ssn and p.team_name = t.name and g.home_team = t.name and g.home_score > g.away_score;

