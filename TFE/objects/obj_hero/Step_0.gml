right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);
down_key = keyboard_check_pressed(vk_down);
up_key = keyboard_check_pressed(vk_up);

xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

if place_meeting(x + xspeed, y + yspeed, obj_floor)
{
if place_meeting(x + xspeed, y + yspeed, obj_wall) == true
{
	xspeed = 0;
	yspeed = 0;
}
x+=xspeed;
y+=yspeed;
}
