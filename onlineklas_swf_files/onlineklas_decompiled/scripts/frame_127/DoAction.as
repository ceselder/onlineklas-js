function KiesDeSom()
{
   do
   {
      DeSom = Math.round(Math.random() * 9 + 1);
   }
   while(SomGehad[DeSom] == true);
   
   SomGehad[DeSom] = true;
   Somvraag.text = Somtekst[DeSom];
}
function VeranderKlok()
{
   Klokwaarde = Klokwaarde - 1;
   Kloktekst.text = Klokwaarde;
   if(Key.isDown(27))
   {
      clearInterval(Kloktimer);
      Klokwaarde = 0;
      gotoAndPlay(137);
   }
   if(Klokwaarde <= 0)
   {
      clearInterval(Kloktimer);
      gotoAndPlay(137);
   }
   if(Foutgeklikt == true)
   {
      if(GeluidAan == true)
      {
         GeluidFout.start();
      }
      Foutgeklikt = false;
   }
   if(Goedgeklikt == true)
   {
      if(GeluidAan == true)
      {
         GeluidGoed.start();
      }
      AantalGoed++;
      GoedGeklikt = false;
      _root["kaartje" + DeSom]._visible = false;
      if(AantalGoed == 10)
      {
         clearInterval(Kloktimer);
         gotoAndPlay(137);
      }
      else
      {
         KiesDeSom();
      }
   }
}
Antwoorden = new Array(11);
Somgehad = new Array(11);
Somtekst = new Array(11);
i = 1;
while(i <= 10)
{
   Antwoorden[i] = 0;
   Somgehad[i] = false;
   i++;
}
i = 1;
while(i <= 10)
{
   do
   {
      Maaksom();
      KiesSomType = SomType;
      if(Somtype == 3)
      {
         KiesSomType = Math.round(Math.random() * 1 + 1);
      }
      GoedeSom = true;
      if(KiesSomType == 1)
      {
         TestAntwoord = Antwoord;
      }
      else
      {
         TestAntwoord = Getal1;
      }
      j = 1;
      while(j <= 10)
      {
         if(Antwoorden[j] == TestAntwoord)
         {
            GoedeSom = false;
         }
         j++;
      }
   }
   while(GoedeSom == false);
   
   Antwoorden[i] = TestAntwoord;
   _root["Kaartje" + i].label = Antwoorden[i];
   if(KiesSomType == 1)
   {
      s = Getal1 + " x " + Getal2;
      SomTekst[i] = s;
   }
   else
   {
      s = Antwoord + " : " + Getal2;
      SomTekst[i] = s;
   }
   i++;
}
Kloktimer = setInterval(Veranderklok,100);
KiesDeSom();
stop();
