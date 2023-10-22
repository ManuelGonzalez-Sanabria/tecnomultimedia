let manzana, juego;
let x1, x2, y2;
let img;

function preload() {
  img = loadImage('greg.png', function() {
    console.log('La imagen se ha cargado correctamente');
  }, function() {
    console.log('Error al cargar la imagen');
  });
}
function setup() {
  createCanvas(600, 800);
  manzana = new Manzana(color, random(500, width), random(0, height), x2, y2, 25, 20, 3, 3);
  juego = new Juego();
}

function draw() {
  background(0);
  juego.iniciar();
  image(img, width / 2, mouseY,100,100);
}

class Juego {
  constructor() {}

  iniciar() {
    manzana.display();
  }
}

class Manzana extends Juego {
  constructor(colores, x1, y1, x2, y2, altura, ancho, velManX, velManY) {
    super();
    this.colores = color(random(["red", "green"]));
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x1 + 13;
    this.y2 = y1;
    this.altura = altura;
    this.ancho = ancho;
    this.velManX = velManX;
    this.velManY = velManY;
  }

  display() {
    push();
    strokeWeight(1);
    noStroke();
    fill(this.colores);
    ellipse(this.x1, this.y1, this.altura, this.ancho);
    ellipse(this.x2, this.y2, this.altura, this.ancho);
    pop();
    this.x1 -= this.velManX;
    this.x2 -= this.velManX;
    if (this.y1 + this.y2 <= 0) {
      this.velManY = abs(this.velManY);
    } else if (this.y1 + this.y2 >= height) {
      this.velManY = -abs(this.velManY);
    } else {
      this.velManY += random(-0.1, 0.1);
    }
    
    this.y1 += this.velManY;
    this.y2 += this.velManY;
  }
}
