void setup(){
  size(700,400,P3D);
  smooth();
}

void draw(){
  background(0);
  
  translate(width/2, height/2, -200);
  
  //rotateX(frameCount * 0.03);
  rotateY(frameCount * 0.03);
  //rotateZ(frameCount * 0.03);
  
  lights();
  
  fill(255,255,0,50);
  //box(150);
  sphereDetail(10);
  sphere(150);
}
