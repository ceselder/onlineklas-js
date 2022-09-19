on(release){
   if(Tafel[6] == true && CheckLaatsteTafel() == true)
   {
      Tafel[6] = false;
      Tafelknop6._alpha = 30;
      Kruis6._visible = true;
   }
   else
   {
      Tafel[6] = true;
      Tafelknop6._alpha = 100;
      Kruis6._visible = false;
   }
}
