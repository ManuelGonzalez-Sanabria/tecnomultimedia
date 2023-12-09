class personajeGreg {
  constructor(colorGreg, posXPG, ancho, alto) {
    this.colorGreg = color(['brown']);
    this.posXPG = width/2;
    this.ancho = 25;
    this.alto = 15;
  }
  dibujar() {
    push();
    fill(this.colorGreg)
      ellipse(this.posXPG, mouseY, this.ancho, this.alto);
    pop();
  }
}
