class Peintre {
  int x, y;
  
  Peintre(){
    x = width/2;
    y = height/2;
  }
  
  void dessiner(){
    strokeWeight(4);
    stroke(random(255),random(255),random(255));
    point(x,y);
  }
  
  void tracer(){
     int choix = int(random(4));
     
     if(choix == 0) x+= 5;
     else if (choix == 1) x -= 5;
     else if(choix == 2) y += 5;
     else { y -= 5; }
  }
  
}

Peintre leonardo;
Peintre pablo;

void setup(){
  size(700,400);
  smooth();
  leonardo = new Peintre();
  pablo = new Peintre();
}

void draw(){
  leonardo.tracer();
  leonardo.dessiner();
  pablo.tracer();
  pablo.dessiner();
}
