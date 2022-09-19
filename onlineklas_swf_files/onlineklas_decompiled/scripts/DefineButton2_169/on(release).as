on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[1] + 100;
      Som1._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som1";
      WegTekst[GeklikteKaartjes] = "Somtekst1";
      WegKaart[GeklikteKaartjes] = "Somkaart1";
   }
}
