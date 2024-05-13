IQScale = IQscore / IQscoreMax;

if(IQScale > 1)
{
	IQScale = 1;
}

draw_sprite(sp_IQScoreSprite, 0, room_width - 832, 5);
draw_sprite_stretched(sp_IQScoreBarSprite, 0, room_width - 829, 18 
					 ,IQScale * HealthBarWidth, HealthBarHeight);


if(player_state != State.still_playing)
{
	if(timer_end == 0)
	{
		timer_end = get_timer() + time_wait * power(10, 6);
	}
	if(keyboard_check(vk_space) || keyboard_check(vk_enter) || (get_timer() > timer_end))
	{
		game_restart();
	}
}


//fade я додам в понеділок
switch(player_state)
{
	case State.still_playing:
		if(IQscore <= 0)
		{
			player_state = State.lost;
			instance_create_depth(0,0,-9999, obj_fade);
		}
		else if(false)//тут повинна бути якась булева змінна коли герой переможе
		{
			player_state = State.won;
		}
		break;
	case State.lost:
		draw_sprite(sp_lost, 1, 0, 0);
		break;
	case State.won:
		draw_sprite(sp_won, 1, 0, 0);
		break;
}