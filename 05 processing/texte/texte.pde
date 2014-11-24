PFont police;
int y = 0;

void setup(){
  size(700,400);
  smooth();
  police = loadFont("Courier-48.vlw");
}

void draw(){

  background(0);
  
  textFont(police, 10);
  
  String items[] = loadStrings("https://docs.google.com/spreadsheet/pub?key=0AlndmSFPsr0edE5WbWU2Zktka1o3NXpPLVdxMWpFcHc&output=txt");
  
  translate(width/2, height/2);
  
  for(int i = 0; i < items.length; i++) {
    rotate(PI/20);
    text(items[i], 0, y + 30*i);
  }
  
  y -= 10;
  
}
