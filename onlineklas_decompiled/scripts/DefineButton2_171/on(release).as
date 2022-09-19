on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 1;
      Antwoord1._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord1";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst1";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart1";
   }
}
