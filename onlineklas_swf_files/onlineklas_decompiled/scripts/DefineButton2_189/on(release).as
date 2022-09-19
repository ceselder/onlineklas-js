on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 10;
      Antwoord10._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord10";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst10";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart10";
   }
}
