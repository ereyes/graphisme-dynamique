class Peintre {

  float x, y, tx, ty;
  
  Peintre(){
    tx = 0;
    ty = 10000;
  }
  
  void dessiner(){
    noStroke();
    fill(255,255,0,50);
    ellipse(x,y,10,10);
  }
  
  void tracer(){
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    
    tx += 0.01;
    ty += 0.01;
  }
  
}

Peintre leonardo;

void setup(){
  size(700,400);
  smooth();
  leonardo = new Peintre();
}

void draw(){
  leonardo.tracer();
  leonardo.dessiner();
}
