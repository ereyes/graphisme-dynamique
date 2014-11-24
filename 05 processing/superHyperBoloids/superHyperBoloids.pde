// press 1, 2 and 3 to switch between states

 
int samples = 20;
float a1 = 10., a2 = 10., a3 = 10.;
float u1 = 0., u2 = 20., v1 = 0., v2 = 20.;
float dU = (u2 - u1) / samples;
float dV = (v2 - v1) / samples;
float n = 0.5; // test values from 0.1 to 0.9 
float e = 1; // 0 = two-sided, 1 = one-sided, 
float u = u1;
int cases;



void setup() {
  size(800, 600, P3D); //setup the screen
  smooth();
}

void draw() {
  
  background(0);
  
  camera(-100, 15, -15, 0, 0, 0, 0, 0, 1); //get a viewpoint
  stroke(255, 255, 255, 50);
  strokeWeight(3);

  if (keyPressed) {
     if(key=='1'){
       //state= "State speher";
        //displaySphere();
        cases=1;
     }
     else if(key=='2'){
       //state= "state lines";
       //displayAsLines();
       cases=2;
     }
     else if(key=='3'){
       //state="state dots";
       //displayAsDots();
       cases=3;
     }
  }
  
  switch(cases) {
    case 1:
    displaySphere();
    break;
    case 2:
    displayAsLines();
    break;
    case 3:
    displayAsDots();
    break;
  }

  
}

void displaySphere() {
  
  //regular sphere:
  for(int i=0; i<360; i+=10) {
   for(int j=0; j<360; j+=10){
     float x = 10 * cos(radians(i)) * cos(radians(j));
     float y = 10 * cos(radians(i)) * sin(radians(j));
     float z = 10 * sin(radians(i));
     point(x,y,z);
   }
  } 
}


void displayAsLines() {
  for (int i=0; i<samples; i++) {
    //float v = v1;
    for (int j=0; j<samples; j++) {
      
      float x = a1 * sqCos (u, n) * sqCos (v1, e);
      float y = a2 * sqCos (u, n) * sqSin (v1, e);
      float z = a3 * sqSin (u, n);
      float xn = a1 * sqCos (u+0.4, n) * sqCos (v1, e);
      float yn = a2 * sqCos (u+0.4, n) * sqSin (v1, e);
      float zn = a3 * sqSin (u+0.4, n);
      float xu = a1 * sqCos (u, n) * sqCos (v1 + 0.4, e);
      float yu = a2 * sqCos (u, n) * sqSin (v1 + 0.4, e);
      float zu = a3 * sqSin (u, n); 
      
      line(x, y, z, xn,yn,zn);
      line(x, y, z, xu,yu,zu);
      
      v1 += dV;
    }
    u += dU;
  }
}

void displayAsDots() {   
   for (int i=0; i<samples; i++) {
    float v = v1;
    for (int j=0; j<samples; j++) {
      float x = a1 * sec(u, n) * sqCos(v, e);
      float y = a2 * sec(u, n) * sqSin(v, e);
      float z = a3 * sqTan(u, n);
      point(x, y, z);
      v += dV;
    }
    u += dU;

   }
}


float sign ( float x ) {
  if ( x < 0 )return -1;
  if ( x > 0 )return 1;
  return 0;
}
float sqSin( float v, float n ) {
  return sign(sin(v)) * pow(abs(sin(v)), n);
}
float sqCos( float v, float n ) {
  return sign(cos(v)) * pow(abs(cos(v)), n);
}

float sec( float v, float n ) {
  return 1/cos(v) * pow(abs(cos(v)),n);
}

float sqTan( float v, float n ) {
  return sign(tan(v)) * pow(abs(tan(v)), n);
}




