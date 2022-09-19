function MaakSom()
{
   do
   {
      Getal1 = Math.round(Math.random() * 9 + 1);
   }
   while(Getal1 == OudGetal1);
   
   OudGetal1 = Getal1;
   do
   {
      Getal2 = Math.round(Math.random() * 9 + 1);
   }
   while(Tafel[Getal2] == false);
   
   Antwoord = Getal1 * Getal2;
}
GeluidGoed = new Sound();
GeluidKlik = new Sound();
GeluidFout = new Sound();
GeluidGoed.attachSound("goed");
GeluidKlik.attachSound("klik");
GeluidFout.attachSound("fout");
Getal1 = 0;
Getal2 = 0;
OudGetal1 = 0;
Antwoord = 0;
Tafel = new Array(11);
i = 1;
while(i <= 10)
{
   Tafel[i] = true;
   i++;
}
SomType = 1;
OmschrijvingSomtype = new Array("","tafels","deeltafels","tafels en deeltafels");
GeluidAan = true;
gotoAndPlay(102);
