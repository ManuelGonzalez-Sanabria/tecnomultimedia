class manzana {
  constructor(posX, posY, posX2, posY2, colores, tamAncho, tamLargo, velManX, velManY, tam) {
    this.posX = random(700, width);
    this.posY = random(0, height);
    this.posX2 = this.posX + 15;
    this.posY2 = this.posY;
    this.colores = color(random(['red', 'green']));
    this.tamAncho = random(35, 55);
    this.tamLargo = random(25, 40);
    this.velManX = random(-10, -35);
    this.velManY = 10;
    this.tam = this.tamAncho + this.tamLargo;
  }

  dibujar() {
    beginShape();
    fill(this.colores);
    noStroke();
    ellipse(this.posX, this.posY, this.tamAncho, this.tamLargo);
    ellipse(this.posX2, this.posY2, this.tamAncho, this.tamLargo);
    endShape();
    this.posX += this.velManX;
    this.posX2 += this.velManX
      this.posY += this.velManY;
    this.posY2 += this.velManY;
    if (this.posY + this.tamLargo >= height) {
      this.velManY = -abs(this.velManY);
    } else if (this.posY <= 0) {
      this.velManY = abs(this.velManY);
    }
  }
  update() {
    if (this.posX + this.posX2 + this.tamAncho + this.tamLargo <= 0) {
      this.posX = random(700, width);
      this.posY = random(0, height);
      this.posX2 = this.posX + 15;
      this.posY2 = this.posY;
      this.velManX = random(-10, -35);
      this.velManY = 10;
    }
  }
}
