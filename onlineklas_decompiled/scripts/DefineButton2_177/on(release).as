on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[7] + 100;
      Som7._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som7";
      WegTekst[GeklikteKaartjes] = "Somtekst7";
      WegKaart[GeklikteKaartjes] = "Somkaart7";
   }
}
