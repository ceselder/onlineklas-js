on(release){
   if(Tafel[2] == true && CheckLaatsteTafel() == true)
   {
      Tafel[2] = false;
      Tafelknop2._alpha = 30;
      Kruis2._visible = true;
   }
   else
   {
      Tafel[2] = true;
      Tafelknop2._alpha = 100;
      Kruis2._visible = false;
   }
}
