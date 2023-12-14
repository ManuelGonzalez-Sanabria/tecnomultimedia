class Boton {

  constructor(x, y, tamX, tamY, texto, direccion) {

    this.x = x
      this.y = y
      this.tamX = tamX
      this.tamY = tamY
      this.direccion = direccion
      this.texto = texto
  }
  dibujar2() {
    push()
     textAlign(LEFT);
      fill(255)
      rect(this.x, this.y, this.tamX, this.tamY)
      fill(0)

      text(this.texto, this.x, this.y + 24)
      pop()
  }


  mouseClicked() {
    if (mouseX > this.x && mouseX < this.x + this.tamX  &&  mouseY > this.y && mouseY < this.y + this.tamY) {
      aventura.cambiarPantalla(this.direccion)
    }
  }
}
