enum State
{
	still_playing = 0,
	lost = 1,
	won = 2, 
}

xspeed = 0;
yspeed = 0;

hammers_available = 0;

sqr_size =  100;

move_speed = sqr_size;

HealthBarWidth = 91;
HealthBarHeight = 11;
IQscoreMax = 50;//зменшив число для простіших тестів якщо забуду вернути постав 120
IQscore = IQscoreMax;

player_state = State.still_playing;

time_wait = 10;//тут виставити час(секунди) щоб вернутись в головне меню після появи поразки чи перемоги
timer_end = 0;










