
PImage photo;

void setup(){
  size(700,400);
  smooth();
  background(0);
  
  photo = loadImage("pepper.jpg");
  photo.resize(400,400);
}

void draw(){
  
  int pixel = 10;
  
  translate(width/2, height/2);
  
  for(int x = 0; x < width; x+=pixel){
    for(int y = 0; y < height; y += pixel) {
      
      color couleurPix = photo.get(x,y);

      rotate(random(PI));      
   
      fill(couleurPix);
      //fill(255, 0.666 * x+y, mouseY * 0.666);
      //fill(random(255), random(255), random(255));
      rect(x,y,pixel,pixel);
    }
  }
  
  //image(photo, 0, 0);
  //photo.filter(BLUR); // GRAY, INVERT, BLUR
  
}
