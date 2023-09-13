void setup() {
  size(500, 500);  //feel free to change the size
  frameRate(2);
}
void draw() {
  boolean shift = true;
  int c = 0;
  for (int a = -300; a<=1800; a+=50)
  {
    for (int b = -300; b <= 1700; b+=100)
    {
      if (shift == true)
        heart(a+50, b+30, 4);
      else
        if (Math.random() < 0.5) {
          fill(137, 207, 240);
          heart(a, b, 4);
        }
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
}
void heart(int x, int y, int z) {
  beginShape();
  strokeWeight(2);
  curveVertex((300+x)/z, (300+y)/z);
  curveVertex((300+x)/z, (300+y)/z);
  curveVertex((225+x)/z, (230+y)/z);
  curveVertex((150+x)/z, (300+y)/z);
  curveVertex((220+x)/z, (400+y)/z);
  curveVertex((300+x)/z, (500+y)/z);
  curveVertex((300+x)/z, (500+y)/z);
  endShape();
  beginShape();
  curveVertex((300+x)/z, (300+y)/z);
  curveVertex((300+x)/z, (300+y)/z);
  curveVertex((375+x)/z, (270+y)/z);
  curveVertex((430+x)/z, (300+y)/z);
  curveVertex((390+x)/z, (400+y)/z);
  curveVertex((300+x)/z, (500+y)/z);
  curveVertex((300+x)/z, (500+y)/z);
  endShape();
}
