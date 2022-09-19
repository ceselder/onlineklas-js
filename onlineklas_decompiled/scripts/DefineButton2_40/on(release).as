on(release){
   if(Tafel[8] == true && CheckLaatsteTafel() == true)
   {
      Tafel[8] = false;
      Tafelknop8._alpha = 30;
      Kruis8._visible = true;
   }
   else
   {
      Tafel[8] = true;
      Tafelknop8._alpha = 100;
      Kruis8._visible = false;
   }
}
