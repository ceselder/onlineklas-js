on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 2;
      Antwoord2._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord2";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst2";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart2";
   }
}
