on(release){
   hoed1.enabled = false;
   hoed2.enabled = false;
   hoed3.enabled = false;
   Hoed2._visible = false;
   _root["bloem" + beurt]._visible = true;
   if(GoedeHoed == 2)
   {
      AantalGoed++;
      if(GeluidAan == true)
      {
         GeluidGoed.start();
      }
      _root["bloem" + beurt]._alpha = 100;
   }
   else
   {
      _root["bloem" + beurt]._alpha = 10;
      if(GeluidAan == true)
      {
         GeluidFout.start();
      }
      if(KiesSomType == 1)
      {
         HoedSomtekst.text = HoedSomtekst.text + " = " + Antwoord;
      }
      else
      {
         HoedSomtekst.text = HoedSomtekst.text + " = " + Getal1;
      }
   }
   wachttimer = setInterval(Wachteven,5000);
}
