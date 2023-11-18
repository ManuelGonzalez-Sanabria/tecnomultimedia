//https://youtu.be/GOCg4A_xgdQ
function setup() {
  createCanvas(600, 600);
  miJuego = new juego();
  Manzana = new manzana();
  pGreg = new personajeGreg();
}


function draw() {
  background(155);
  miJuego.dibujar();
}
//hecho por Manuel González Sanabria, estudiante de Lic. Diseño Multimedial, legajo 94778/2. UNLP 2023. (comision 5 tencnología multimedial 1).
