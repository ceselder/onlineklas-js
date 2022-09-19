on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 5;
      Antwoord5._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord5";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst5";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart5";
   }
}
