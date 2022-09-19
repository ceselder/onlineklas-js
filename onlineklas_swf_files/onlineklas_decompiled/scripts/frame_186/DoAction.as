hoed1.enabled = false;
hoed2.enabled = false;
hoed3.enabled = false;
hoedsomtekst._visible = false;
Beurt++;
Maaksom();
KiesSomType = SomType;
if(Somtype == 3)
{
   KiesSomType = Math.round(Math.random() * 1 + 1);
}
if(KiesSomType == 1)
{
   i = 1;
   while(i <= 3)
   {
      do
      {
         j = Math.round(Math.random() * 99 + 1);
         _root["antwoord" + i].text = j;
      }
      while(j == Antwoord);
      
      i++;
   }
}
else
{
   i = 1;
   while(i <= 3)
   {
      do
      {
         j = Math.round(Math.random() * 9 + 1);
         _root["antwoord" + i].text = j;
      }
      while(j == Getal1);
      
      i++;
   }
}
GoedeHoed = Math.round(Math.random() * 2 + 1);
if(KiesSomType == 1)
{
   _root["antwoord" + GoedeHoed].text = Antwoord;
   HoedSomtekst.text = Getal1 + " x " + Getal2;
}
else
{
   _root["antwoord" + GoedeHoed].text = Getal1;
   HoedSomtekst.text = Antwoord + " : " + Getal2;
}
