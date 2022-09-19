on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[2] + 100;
      Som2._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som2";
      WegTekst[GeklikteKaartjes] = "Somtekst2";
      WegKaart[GeklikteKaartjes] = "Somkaart2";
   }
}
