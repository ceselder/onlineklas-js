on(release){
   if(Tafel[7] == true && CheckLaatsteTafel() == true)
   {
      Tafel[7] = false;
      Tafelknop7._alpha = 30;
      Kruis7._visible = true;
   }
   else
   {
      Tafel[7] = true;
      Tafelknop7._alpha = 100;
      Kruis7._visible = false;
   }
}
