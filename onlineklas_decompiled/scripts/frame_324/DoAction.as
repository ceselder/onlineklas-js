function WachtEvenLoop()
{
   if(AntwoordGoed == true)
   {
      if(GeluidAan == true)
      {
         GeluidGoed.start();
      }
      AantalGeraden++;
      _root[WegTekst[1]]._visible = false;
      _root[WegKaart[1]]._visible = false;
      _root[WegTekst[2]]._visible = false;
      _root[WegKaart[2]]._visible = false;
      if(AantalGeraden == 10)
      {
         clearInterval(MemorySpelInterval);
         gotoAndPlay(334);
      }
   }
   else
   {
      _root[OmdraaiKaartje[1]]._visible = true;
      _root[OmdraaiKaartje[2]]._visible = true;
   }
   clearInterval(WachtEvenInterval);
   GeklikteKaartjes = 0;
}
function MemorySpelLoop()
{
   if(Key.isDown(27))
   {
      clearInterval(MemorySpelInterval);
      gotoAndPlay(102);
   }
   if(GeklikteKaartjes == 2)
   {
      Beurten++;
      if(Kaartje[1] - Kaartje[2] == 100 || Kaartje[1] - Kaartje[2] == -100)
      {
         AntwoordGoed = true;
      }
      else
      {
         AntwoordGoed = false;
      }
      WachtEvenInterval = setInterval(WachtEvenLoop,1500);
      GeklikteKaartjes = 3;
   }
}
Antwoorden = new Array(11);
Sommen = new Array(11);
OmdraaiKaartje = new Array(3);
WegTekst = new Array(3);
WegKaart = new Array(3);
AntwoordGoed = true;
i = 1;
while(i <= 10)
{
   Antwoorden[i] = 0;
   Sommen[i] = 0;
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
   _root["AntwoordTekst" + i].text = Antwoorden[i];
   do
   {
      GoedKaartje = true;
      TempKaartje = Math.round(Math.Random() * 10 + 1);
      if(Sommen[Tempkaartje] != 0)
      {
         Goedkaartje = false;
      }
   }
   while(GoedKaartje == false);
   
   Sommen[Tempkaartje] = i;
   if(KiesSomType == 1)
   {
      s = Getal1 + " x " + Getal2;
      _root["SomTekst" + TempKaartje].text = s;
   }
   else
   {
      s = Antwoord + " : " + Getal2;
      _root["SomTekst" + TempKaartje].text = s;
   }
   i++;
}
Beurten = 0;
AantalGeraden = 0;
GeklikteKaartjes = 0;
Kaartje = new Array(3);
MemorySpelInterval = setInterval(MemorySpelLoop,50);
stop();
