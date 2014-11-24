void setup(){
  size(700,400);
  smooth();
  background(0);
  PFont maPolice;
  maPolice = loadFont("courier.vlw");
  textFont(maPolice, 43); 
  frameRate(10);
}

void draw(String txt){
  
  fill(0, 10);
  rect(0, 0, width, height);
  
  fill(random(155,255),random(155,255),125,150);
  text(txt, random(width-100), height/2);
}
