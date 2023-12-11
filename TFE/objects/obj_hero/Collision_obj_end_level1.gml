/// @description Insert description here
// You can write your code in this editor
if(IQscore >=150)
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



