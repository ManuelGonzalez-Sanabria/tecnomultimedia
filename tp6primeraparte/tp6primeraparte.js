let imagenes = []
  function preload() {
  for (let i = 0; i <= 14; i++) {
    imagenes[i] = loadImage( "assets/"+ i +".jpg");
  }
}
let aventura
  function setup() {
  createCanvas(windowWidth, windowHeight)
    background(120)
    aventura = new Aventura()
    miJuego = new juego();
  Manzana = new manzana();
  pGreg = new personajeGreg();
  textSize(12)
}


function draw() {
  aventura.dibujar()
  aventura.actualizar()
}

function mouseClicked() {
  aventura.mouseClick()
}
