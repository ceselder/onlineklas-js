function ControleerEscape()
{
   if(Key.isDown(27))
   {
      clearInterval(EscapeTimer);
      gotoAndPlay(304);
   }
}
EscapeTimer = setInterval(ControleerEscape,50);
Beurt = 0;
GoedeHoed = 0;
AantalGoed = 0;
i = 1;
while(i <= 10)
{
   _root["bloem" + i]._visible = false;
   i++;
}
stop();
