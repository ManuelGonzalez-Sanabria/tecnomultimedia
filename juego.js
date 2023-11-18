let puntosPG = 0;
let incrementado = false;
let juegoActivo = true;
class juego {
  constructor() {
  }

  dibujar() {
    if (juegoActivo) {
      Manzana.dibujar();
      pGreg.dibujar();
      fill(255);
      text("PG points: " + puntosPG, 113, 25);
      if (Manzana.posX > 0) {
        incrementado = false;
      }
      if (Manzana.posX + Manzana.tam <= 0 && !incrementado) {
        puntosPG++;
        Manzana.update();
        incrementado = true;
      }
    }
    stroke(0)
    strokeWeight(10)
     if(dist(Manzana.posX, Manzana.posY, pGreg.posXPG, mouseY) < 40){
      textSize(50);
      textAlign(CENTER);
      fill(255);
      text("¡Fin del juego!", width / 2, height / 2);
      text("Puntos: " + puntosPG, width / 2, height / 2 + 50);
      noLoop();
      console.log("COLISIONO")
    }
  }
}
