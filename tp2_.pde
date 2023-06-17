//https://www.youtube.com/watch?v=UDcLVUZYxto
int rad=60;
int a=1;
int d=1;
int i=1;
PImage img;
void setup() {
  size(800, 400);
  noStroke();
  img= loadImage("cubo optico.jpg");
  
}

void draw() {
 background(200);
 println(mouseX,mouseY);
 push();
  img.resize(400,400);
 image(img,0,0);
 pop();
if(mouseX<800 && mouseX>425 && mouseY>-800 && mouseY<0){
 a=1;
 d=1;
 i=1;
 }else{
 a=0;
 }
 if(mouseX<569 && mouseX>-800 && mouseY<400 && mouseY>-800){
 d=0;
 }else{
 d=1;
 }
 if(mouseX<800 && mouseX>569 && mouseY<400 && mouseY>-800){
 i=0;
 }else{
 i=1;
 }
  quadtp2(570,130,180,a);
  quadtp2(500,250,60,i);
  quadtp2(640,250,120,d);
println(rad);
  /*
  pushMatrix();
  translate(500, 270);
  for (int i=0; i<4; i++) {
    rotate((radians(0+90*i)));
    if (i%2==0) {
      triangulo1(56);
    } else {
      triangulo2(146);
    }
    rotate(0+(radians(-90))*i);
  }
  popMatrix();
  
   pushMatrix();
  translate(700, 170);
  for (int i=0; i<4; i++) {
    rotate((radians(0+90*i)));
    if (i%2==0) {
      triangulo1(56);
    } else {
      triangulo2(146);
    }
    rotate(0+(radians(-90))*i);
  }
  popMatrix();
  
   pushMatrix();
  translate(500, 270);
  for (int i=0; i<4; i++) {
    rotate((radians(0+90*i)));
    if (i%2==0) {
      triangulo1(56);
    } else {
      triangulo2(146);
    }
    rotate(0+(radians(-90))*i);
  }
  popMatrix();
  */
}
 //hecho por Manuel González Sanabria legajo 94778/2 carrera Lic. Diseño Multimedial materia tecnología multimedial 1 año 2023. 
