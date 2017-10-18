int x, y, r ;
float alf;
void setup()
{
  size (400,400);
  r=150;
}
void draw ()
{
  background(100);
  alf=alf-4;
  x=200+ round(r*cos(PI*alf/180));
  y=200+ round(r*sin(PI*alf/180));
  ellipse(x,y,10,10);
  
}