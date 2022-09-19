on(release){
   if(GeklikteKaartjes < 2)
   {
      if(GeluidAan == true)
      {
         GeluidKlik.start();
      }
      GeklikteKaartjes++;
      Kaartje[GeklikteKaartjes] = Sommen[10] + 100;
      Som10._visible = false;
      OmdraaiKaartje[GeklikteKaartjes] = "Som10";
      WegTekst[GeklikteKaartjes] = "Somtekst10";
      WegKaart[GeklikteKaartjes] = "Somkaart10";
   }
}
