PFont myFont;
color c1, c2, c3;
String[] fontList;
String currentFont = "";
int fontCount = 0;

void setup() {
  //fullScreen();
  size(300, 200);
  frameRate(5);
  noCursor();
  fontList = PFont.list();
  //myFont = createFont("Beorgia", 64);
  //printArray(fontList);
}

void draw() {
  c1 = color(random(255), random(255), random(255));
  c2 = color(random(255), random(255), random(255));
  c3 = color(random(255), random(255), random(255));
  background(c1);
  noStroke();
  fill(c2);
  rect(0, height/3, width, height*2/3);
  fill(c3);
  
  //fontCount += 1;
  //if (fontCount == 227) {
  //  fontCount = 0;
  //}
  
  fontCount = int(random(228));
  currentFont = '"' + fontList[fontCount] + '"';
  println(currentFont);
  
  myFont = createFont(fontList[fontCount], 64);
  
  textFont(myFont);
  textSize(200);
  textAlign(CENTER, CENTER);
  text("Camp 51.9", width/2, height/2);
}
