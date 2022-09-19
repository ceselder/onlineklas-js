function NieuweBallonSom()
{
   MaakSom();
   KiesSomType = SomType;
   if(Somtype == 3)
   {
      KiesSomType = Math.round(Math.random() * 1 + 1);
   }
   if(KiesSomType == 1)
   {
      i = 1;
      while(i <= 5)
      {
         do
         {
            j = Math.round(Math.random() * 99 + 1);
            _root["ballon" + i].label = j;
         }
         while(j == Antwoord);
         
         i++;
      }
   }
   else
   {
      i = 1;
      while(i <= 5)
      {
         do
         {
            j = Math.round(Math.random() * 9 + 1);
            _root["ballon" + i].label = j;
         }
         while(j == Getal1);
         
         i++;
      }
   }
   GoedeBallon = Math.round(Math.random() * 4 + 1);
   if(KiesSomType == 1)
   {
      _root["ballon" + GoedeBallon].label = Antwoord;
      BallonSom.text = Getal1 + " x " + Getal2;
   }
   else
   {
      _root["ballon" + GoedeBallon].label = Getal1;
      BallonSom.text = Antwoord + " : " + Getal2;
   }
   i = 1;
   while(i <= 5)
   {
      _root["ballon" + i]._y = 440 + Math.round(Math.random() * 25);
      _root["ballon" + i]._visible = true;
      i++;
   }
}
function BeweegBallonnen()
{
   if(Key.isDown(27))
   {
      clearInterval(BallonInterval);
      gotoAndPlay(166);
   }
   if(_global.StartNieuweSom != 0)
   {
      NieuweBallonSom();
      if(_global.StartNieuweSom == 1)
      {
         if(GeluidAan == true)
         {
            GeluidGoed.start();
         }
         Score = Score + 10;
         Scoretekst.text = "Score: " + Score;
         Level = Level + 0.05;
         if(Level > 4)
         {
            Level = 4;
         }
      }
      else
      {
         if(GeluidAan == true)
         {
            GeluidFout.start();
         }
         Ballonnen--;
         _root["leven" + Ballonnen]._visible = false;
         if(Ballonnen <= 0)
         {
            clearInterval(BallonInterval);
            gotoAndPlay(166);
         }
      }
      _global.StartNieuweSom = 0;
   }
   i = 1;
   while(i <= 5)
   {
      _root["ballon" + i]._y = _root["ballon" + i]._y - (1 + Level);
      if(_root["ballon" + i]._y < -90)
      {
         if(i == GoedeBallon)
         {
            if(GeluidAan == true)
            {
               GeluidFout.start();
            }
            NieuweBallonSom();
            Ballonnen--;
            _root["leven" + Ballonnen]._visible = false;
            if(Ballonnen <= 0)
            {
               clearInterval(BallonInterval);
               gotoAndPlay(166);
            }
         }
      }
      i++;
   }
}
ballon1._visible = false;
ballon2._visible = false;
ballon3._visible = false;
ballon4._visible = false;
ballon5._visible = false;
Score = 0;
Ballonnen = 5;
GoedeBallon = 0;
Level = 0;
_global.StartNieuweSom = 0;
NieuweBallonSom();
BallonInterval = setInterval(Beweegballonnen,40);
stop();
