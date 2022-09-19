on(release){
   if(Tafel[1] == true && CheckLaatsteTafel() == true)
   {
      Tafel[1] = false;
      Tafelknop1._alpha = 30;
      Kruis1._visible = true;
   }
   else
   {
      Tafel[1] = true;
      Tafelknop1._alpha = 100;
      Kruis1._visible = false;
   }
}
