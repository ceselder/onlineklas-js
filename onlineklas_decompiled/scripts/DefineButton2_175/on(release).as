on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[6] + 100;
      Som6._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som6";
      WegTekst[GeklikteKaartjes] = "Somtekst6";
      WegKaart[GeklikteKaartjes] = "Somkaart6";
   }
}
