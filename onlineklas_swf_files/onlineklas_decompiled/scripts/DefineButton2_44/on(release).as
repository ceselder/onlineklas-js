on(release){
   if(Tafel[10] == true && CheckLaatsteTafel() == true)
   {
      Tafel[10] = false;
      Tafelknop10._alpha = 30;
      Kruis10._visible = true;
   }
   else
   {
      Tafel[10] = true;
      Tafelknop10._alpha = 100;
      Kruis10._visible = false;
   }
}
