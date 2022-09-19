Cirkelstartknop.label = "?";
i = 1;
while(i <= 10)
{
   if(Tafel[i] == false)
   {
      _root["Tafelknop" + i]._alpha = 30;
      _root["Kruis" + i]._visible = true;
   }
   else
   {
      _root["Kruis" + i]._visible = false;
   }
   i++;
}
function CheckLaatsteTafel()
{
   Laatstetafel = 0;
   i = 1;
   while(i <= 10)
   {
      if(Tafel[i] == true)
      {
         LaatsteTafel++;
      }
      i++;
   }
   if(LaatsteTafel == 1)
   {
      return false;
   }
   return true;
}
if(GeluidAan == true)
{
   Geluidkruis._visible = false;
   GeluidKnop._alpha = 100;
}
else
{
   Geluidkruis._visible = true;
   GeluidKnop._alpha = 30;
}
SomTypeTekst.text = OmschrijvingSomType[SomType];
stop();
