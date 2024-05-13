
if(IQscore >=10)
{
	instance_create_depth(0,0,-9999, obj_fade);
	room_goto(level4)
}
else
{
	show_message("IQ level is low! You need more");
}
x-=xspeed;
y-=yspeed;
IQscore +=3;











