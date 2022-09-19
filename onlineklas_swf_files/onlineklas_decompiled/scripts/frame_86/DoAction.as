function IntroEinde()
{
   clearInterval(IntroEindeTimer);
   gotoAndPlay(87);
}
IntroEindeTimer = setInterval(IntroEinde,3000);
stop();
