boolean boton(int coRX, int coRY ) {

  if ((mouseX > coRX) && (mouseY > coRY) && (mouseX < coRX + 100) && (mouseY < coRY + 50)) {
    return (true);
  } else {
    return (false);
  }
}
boolean boton2(int corX, int corY) {
  if ((mouseX > corX) && (mouseY > corY) && (mouseX < corX + 100) && (mouseY < corY + 50)) {
    return (true);
  } else {
    return (false);
  }
}
void interfaz(String textoS, String textoEleccion, String eleccion2) {

  pushStyle();
  textAlign(CENTER);
  fill(255);
  text(textoS, 450, 475);
  noFill();
  image(imagenes[pantalla], 0, 0, 600, 450);
  stroke(255);
  rect(400, 450, 100, 50);

  if (pantalla == 7 ) {

    rect(400, 550, 100, 50);
    text(textoEleccion, 450, 575);
  } 
  if (pantalla == 11){
    text(eleccion2, 450, 575);
  }
  popStyle();
}
