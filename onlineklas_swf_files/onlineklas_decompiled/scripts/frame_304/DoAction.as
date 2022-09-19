clearInterval(wachttimer);
clearInterval(EscapeTimer);
s = "Je hebt " + AantalGoed + " bloem verdiend.";
if(AantalGoed > 1)
{
   s = "Je hebt " + AantalGoed + " bloemen verdiend.";
}
if(AantalGoed == 0)
{
   s = "Je hebt " + AantalGoed + " bloemen verdiend.";
}
resultaattekst.text = s;
stop();
