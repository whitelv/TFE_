//дороблю плавність ходьби у понеділок
right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);
down_key = keyboard_check_pressed(vk_down);
up_key = keyboard_check_pressed(vk_up);

xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

//якщо герой зайде у глухий кут він не вийде допишу ще вікно програша до цього
if (place_meeting(x + xspeed, y + yspeed, obj_floor) && !instance_nearest(x + xspeed, y + yspeed, obj_floor).hero_stands)//забрав надлишковий код, якщо десь забагається вернеш колишній код
{
	if !(place_meeting(x + xspeed, y + yspeed, obj_wall) ||
					(place_meeting(x + xspeed, y + yspeed, obj_old_desk) && hammers_available <= 0)) 
	{
		x += xspeed;
		y += yspeed;
		if(up_key||right_key||down_key||left_key)
		{
			IQscore -= 3;
		}
	}
}