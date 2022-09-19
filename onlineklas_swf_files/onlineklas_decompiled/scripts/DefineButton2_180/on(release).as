on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 3;
      Antwoord3._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord3";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst3";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart3";
   }
}
