on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 8;
      Antwoord8._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord8";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst8";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart8";
   }
}
