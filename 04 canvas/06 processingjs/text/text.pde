
void setup() {
  size(600,400);
  smooth();
  PFont font;
  font = loadFont("ArialNarrow-20.vlw");
  textFont(font, 30);
  background(100);
  frameRate(5);
}

void draw(String t){
  fill(0,50);
  rect(0,0,width,height);
  fill(255);
  text(t, random(20,width-200), height/2);
  
}


