on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[3] + 100;
      Som3._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som3";
      WegTekst[GeklikteKaartjes] = "Somtekst3";
      WegKaart[GeklikteKaartjes] = "Somkaart3";
   }
}
