//https://youtu.be/Svhj7VlAlpQ
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
  textSize(15)
}


function draw() {
  aventura.dibujar()
}

function mouseClicked() {
  aventura.mouseClick()
}
//hecho por Manuel González Sanabria, estudiante de Lic. Diseño Multimedial, legajo 94778/2. UNLP 2023. (comision 5 tencnología multimedial 1).
