/// @description Insert description here
// You can write your code in this editor
IQScale=(IQscore/IQscoreMax);
if((IQScale)>1)
{
 IQScale = 1;
}

draw_sprite(sp_IQScoreSprite,0,room_width-300,0);
draw_sprite_stretched(sp_IQScoreBarSprite,0,room_width-292,64,IQScale*HealthBarWidth,HealthBarHeight);