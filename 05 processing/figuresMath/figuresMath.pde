int r = 60;

void setup(){
  size(700,400,P3D);
  smooth();
}

void draw() {
  background(0);
  lights();
  translate(width/2, height/2, 200);
  
  stroke(255,255,0,100);
  strokeWeight(5);
  
  rotateY(frameCount * 0.01);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  
  for(int i = 0; i < 360; i+=5) {
    for(int j = 0; j < 360; j+=5){
     
      /*
      float x = r * cos(j) * cos(radians(i));
      float y = r * sin(radians(i)) * cos(j);
      float z = r * cos(i);
      */
      
      float x = r * cos(i) * cos(j);
      float y = r * cos(i) * sin(j);
      float z = r * sin(i);
      
      point(x,y,z);
      
    }
  }
  
  
}
