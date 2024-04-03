
if(IQscore >=130)
{
	show_message("You won!");
	game_restart();//тут має бути перехід на наступний рівень
}
else
{
	show_message("IQ level is low! You need more");
}
x-=xspeed;
y-=yspeed;
IQscore +=3;





