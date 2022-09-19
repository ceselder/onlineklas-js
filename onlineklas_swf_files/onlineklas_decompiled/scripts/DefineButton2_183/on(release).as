on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[5] + 100;
      Som5._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som5";
      WegTekst[GeklikteKaartjes] = "Somtekst5";
      WegKaart[GeklikteKaartjes] = "Somkaart5";
   }
}
