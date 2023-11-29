right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);

xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;



if place_meeting(x + xspeed, y, obj_wall) == true
{
	xspeed = 0;
}

if place_meeting(x, y + yspeed, obj_wall) == true
{
	yspeed = 0;
}



x += xspeed;
y += yspeed;








