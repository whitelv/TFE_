right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);
down_key = keyboard_check_pressed(vk_down);
up_key = keyboard_check_pressed(vk_up);

xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

if place_meeting(x + xspeed, y + yspeed, obj_floor)
{
if place_meeting(x + xspeed, y + yspeed, obj_wall) == true ||
(place_meeting(x + xspeed, y + yspeed, obj_old_desk) == true&&hammers_available<=0) 
{
	xspeed = 0;
	yspeed = 0;
}
else 
{
	if(up_key||right_key||down_key||left_key)
	{
		IQscore-=3;
		//if(!audio_is_playing(shoiu))
		{
			audio_play_sound(shoiu, 0, false);	
		}
	}
}
x+=xspeed;
y+=yspeed;
}


if(IQscore<=0)
{
 instance_create_depth(0,0,-9999, obj_fade);
	room_goto(rm_lost)
}