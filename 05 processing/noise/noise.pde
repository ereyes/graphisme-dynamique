float temps = 3;

void setup(){
  size(700,400);
  smooth();
}

void draw(){

  background(0);
  
  float bruit = noise(temps);
  float x = map(bruit, 0, 1, 0, width);
  
  ellipse(x, 200, 20, 20);
  
  temps += 0.01;
}
