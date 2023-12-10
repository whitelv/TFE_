/// @description Insert description here
// You can write your code in this editor
IQScale=(IQscore/IQscoreMax);
if((IQScale)>1)
{
 IQScale = 1;
}
if(IQscore<0)
{
 IQscore = 0;
}
draw_sprite(sp_IQScoreSprite,0,1000,10);
draw_sprite_stretched(sp_IQScoreBarSprite,0,1008,74,IQScale*HealthBarWidth,HealthBarHeight);