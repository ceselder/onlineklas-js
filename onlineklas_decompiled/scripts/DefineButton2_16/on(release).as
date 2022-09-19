on(release){
   if(GeluidAan == true)
   {
      GeluidAan = false;
      GeluidKnop._alpha = 30;
      Geluidkruis._visible = true;
   }
   else
   {
      GeluidAan = true;
      GeluidKnop._alpha = 100;
      Geluidkruis._visible = false;
   }
}
