on(release){
   if(Tafel[4] == true && CheckLaatsteTafel() == true)
   {
      Tafel[4] = false;
      Tafelknop4._alpha = 30;
      Kruis4._visible = true;
   }
   else
   {
      Tafel[4] = true;
      Tafelknop4._alpha = 100;
      Kruis4._visible = false;
   }
}
