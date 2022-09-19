on(release){
   if(Tafel[5] == true && CheckLaatsteTafel() == true)
   {
      Tafel[5] = false;
      Tafelknop5._alpha = 30;
      Kruis5._visible = true;
   }
   else
   {
      Tafel[5] = true;
      Tafelknop5._alpha = 100;
      Kruis5._visible = false;
   }
}
