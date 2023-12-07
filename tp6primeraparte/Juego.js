class juego {
  constructor() {
  this.puntosPG = 0;
  this.incrementado = false;
  this.juegoActivo = true;
  }

  dibujar() {
    if (this.juegoActivo) {
      Manzana.dibujar();
      pGreg.dibujar();
      fill(255);
      text("PG points: " + this.puntosPG, 113, 25);
      if (Manzana.posX > 0) {
        this.incrementado = false;
      }
      if (Manzana.posX + Manzana.tam <= 0 && !this.incrementado) {
        this.puntosPG++;
        Manzana.update();
        this.incrementado = true;
      }
    }
    stroke(0)
    strokeWeight(10)
     if(dist(Manzana.posX, Manzana.posY, pGreg.posXPG, mouseY) < 40){
      textSize(50);
      textAlign(CENTER);
      fill(255);
      text("¡Fin del juego!", width / 2, height / 2);
      text("Puntos: " + this.puntosPG, width / 2, height / 2 + 50);
      this.juegoActivo = false
      console.log("COLISIONO")
    }
  }
}
