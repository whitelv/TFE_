IQScale=(IQscore/IQscoreMax);
if((IQScale)>1)
{
 IQScale = 1;
}

draw_sprite(sp_IQScoreSprite,0,room_width-750,0);
draw_sprite_stretched(sp_IQScoreBarSprite,0,room_width-747,26,IQScale*HealthBarWidth,HealthBarHeight);