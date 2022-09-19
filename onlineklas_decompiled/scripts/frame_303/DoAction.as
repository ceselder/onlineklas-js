function WachtEven()
{
   clearInterval(wachttimer);
   if(beurt < 10)
   {
      gotoAndPlay(186);
   }
   else
   {
      gotoAndPlay(304);
   }
}
hoed1.enabled = true;
hoed2.enabled = true;
hoed3.enabled = true;
Hoedsomtekst._visible = true;
stop();
