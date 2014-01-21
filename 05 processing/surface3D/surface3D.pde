int def = 10; // définition

float largeur, hauteur;
float [][] val;

float decalageX, decalageY, decalageZ = 0.1;
float increment = 0.1; // quantité de vertex
float incrementZ = 0.03; // vitesse

void setup() {
  size(700, 400, P3D);
  smooth();
  val = new float[width/def][height/def];
  largeur = width/def;
  hauteur = height/def;
}

void draw() {
  background(0);

  lights();

  noStroke();

  translate(0, height/2, -400);
  rotateX(70);

  noiseSeed(50);
  decalageX = 0.0;
  noiseDetail(15, 0.3);
  
  for(int x = 0; x < width/def; x++){
    
    decalageX += increment;
    
    decalageY = 0.0;
    
    for (int y = 0; y < height/def; y++) {
      decalageY += increment; 
      
      float z = noise(decalageX,decalageY,decalageZ) * 300;
      val[x][y] = z;
    }
    
  }
  
  for (int x = 0; x < largeur-1; x++) {
    for (int y = 0; y < hauteur-1; y++) {
      
      fill((val[x][y]), (val[x][y]), 0, 200);
      //stroke((val[x][y]), 255, 0);
      
      beginShape(QUADS); // QUADS, TRIANGLES, LINES, POINTS
      vertex(x*def, y*def, val[x][y]);
      vertex(x*def+def, y*def, val[x+1][y]);
      vertex(x*def+def, y * def+def, val[x+1][y+1]);
      vertex(x*def, y*def+def, val[x][y+1]);
      endShape(CLOSE);
    }
  }
  
  decalageZ += incrementZ;
}

