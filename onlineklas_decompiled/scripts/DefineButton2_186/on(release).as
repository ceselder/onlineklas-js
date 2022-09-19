on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[9] + 100;
      Som9._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som9";
      WegTekst[GeklikteKaartjes] = "Somtekst9";
      WegKaart[GeklikteKaartjes] = "Somkaart9";
   }
}
