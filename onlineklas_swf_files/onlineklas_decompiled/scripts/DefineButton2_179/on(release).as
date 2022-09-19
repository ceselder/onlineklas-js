on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[8] + 100;
      Som8._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som8";
      WegTekst[GeklikteKaartjes] = "Somtekst8";
      WegKaart[GeklikteKaartjes] = "Somkaart8";
   }
}
