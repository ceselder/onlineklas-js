on(release){
   if(Tafel[9] == true && CheckLaatsteTafel() == true)
   {
      Tafel[9] = false;
      Tafelknop9._alpha = 30;
      Kruis9._visible = true;
   }
   else
   {
      Tafel[9] = true;
      Tafelknop9._alpha = 100;
      Kruis9._visible = false;
   }
}
