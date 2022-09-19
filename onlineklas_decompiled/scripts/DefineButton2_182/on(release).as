on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 4;
      Antwoord4._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord4";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst4";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart4";
   }
}
