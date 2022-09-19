on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 7;
      Antwoord7._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord7";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst7";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart7";
   }
}
