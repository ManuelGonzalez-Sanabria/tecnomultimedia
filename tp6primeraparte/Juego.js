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
      fill(0);
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
      if (dist(Manzana.posX, Manzana.posY, pGreg.posXPG, mouseY) < 40) {
        push()
      text("¡Fin del juego!", width / 2, height / 2 - 100);
      text("Puntos: " + this.puntosPG, width / 2, height / 2 + 100);
      this.juegoActivo = false
        console.log("COLISIONO")
    }
  }
  reiniciar() {
    this.puntosPG = 0;
    this.incrementado = false;
    this.juegoActivo = true;
     if (this.juegoActivo) {
      Manzana.dibujar();
      pGreg.dibujar();
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
      if (dist(Manzana.posX, Manzana.posY, pGreg.posXPG, mouseY) < 40) {
      text("¡Fin del juego!", width / 2, height / 2 - 100);
      text("Puntos: " + this.puntosPG, width / 2, height / 2 + 100);
      this.juegoActivo = false
        console.log("COLISIONO")
    }
  }
}
