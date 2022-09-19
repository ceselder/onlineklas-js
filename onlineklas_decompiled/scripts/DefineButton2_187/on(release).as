on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = 9;
      Antwoord9._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Antwoord9";
      WegTekst[GeklikteKaartjes] = "Antwoordtekst9";
      WegKaart[GeklikteKaartjes] = "Antwoordkaart9";
   }
}
