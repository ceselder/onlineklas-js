on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[4] + 100;
      Som4._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som4";
      WegTekst[GeklikteKaartjes] = "Somtekst4";
      WegKaart[GeklikteKaartjes] = "Somkaart4";
   }
}
