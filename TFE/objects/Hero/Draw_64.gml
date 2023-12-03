draw_sprite(IQScoreSprite,0,630,-4);
IQScale=(IQscore/IQscoreMax);
if((IQScale)>1)
{
 IQScale = 1;
}
draw_sprite_stretched(IQScoreBarSprite,0,677,64,IQScale*HealthBarWidth,HealthBarHeight);