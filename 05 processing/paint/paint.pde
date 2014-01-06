void setup() {
  size(700, 400);
  smooth();
  frameRate(60);
  stroke(255,255,0);
  background(0);
}

void draw(){
  
  strokeWeight(3);

  if(mousePressed){
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
}


void keyPressed(){
  if(key == 'r'){
    stroke(255,0,0);
  } 
  else if(key == 'g') {
    stroke(0,255,0);
  }
    else {
    noStroke();
    rect(0,0,width,height); 
    fill(0, 50);
  }
}


