IQScale=(IQscore/IQscoreMax);
if((IQScale)>1)
{
 IQScale = 1;
}

draw_sprite(sp_IQScoreSprite,0,room_width-832,5);
draw_sprite_stretched(sp_IQScoreBarSprite,0,room_width-829,18,IQScale*HealthBarWidth,HealthBarHeight);