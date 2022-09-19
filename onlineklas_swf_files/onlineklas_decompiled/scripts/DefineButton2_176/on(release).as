on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 6;
      Antwoord6._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord6";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst6";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart6";
   }
}
