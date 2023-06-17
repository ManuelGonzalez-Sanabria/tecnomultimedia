void quadtp2(int coox, int cooy, int rad,int luz){
  beginShape();
  
  pushMatrix();
  translate(coox, cooy);
  for (int i=0; i<4; i++) {
    rotate((radians(0+90*i)));
    if (i%2==0) {
      triangulo1(rad,luz);
    } else {
      triangulo2(rad+90,luz);
    }
    rotate(0+(radians(-90))*i);
  }
  popMatrix();
  endShape();
}
void triangulo1(int rad,int luz) {
  pushMatrix();

  rotate(radians(rad));
  for (int i=0; i<7; i++) {
    if (i%2==0) {
      fill(255-luz*100);
    } else {
      fill(100-luz*100);
    }
    triangle(0, 0, 0, 80-i*10, 140-i*17.5, 0);
  }
  popMatrix();
}

void triangulo2(int rad,int luz) {
  pushMatrix();
  rotate(radians(rad));
  for (int i=0; i<7; i++) {
    if (i%2==0) {
      fill(100-luz*100);
    } else {
      fill(255-luz*100);
    }
    triangle(0, 0, 0, 80-i*10, -140+i*17.5, 0);
  }
  popMatrix();
}
