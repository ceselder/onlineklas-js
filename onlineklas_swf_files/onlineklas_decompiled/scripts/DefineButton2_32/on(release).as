on(release){
   if(Tafel[3] == true && CheckLaatsteTafel() == true)
   {
      Tafel[3] = false;
      Tafelknop3._alpha = 30;
      Kruis3._visible = true;
   }
   else
   {
      Tafel[3] = true;
      Tafelknop3._alpha = 100;
      Kruis3._visible = false;
   }
}
