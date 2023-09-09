//https://www.youtube.com/watch?v=4rLKe-LiVCg //acá el enlace para youtube
let posYp1
  let posYp2
  let arriba =false
  let abajo = false
  let pelotaTam
   let puntosP1 = 0;
let puntosP2 = 0;
  // var nums =[1,2,3,4,5,6,7,8,9,10]
  function setup() {
  createCanvas(1366, 540)
    posYp1 = height/2
    posYp2=height/2
    pelotaPosX= 227
    pelotaPosY= height/2
    pelotaTam= 20
    pelotaVelX= 10
    pelotaVelY= 10
   
}
function draw() {
  background(0)
    push()
    posYp2=mouseY
    textSize(15)
    strokeWeight(1)
    stroke(255)
    text("P1 points:", 113, 25)
    text("P2 points:", 1114, 25)
    pop()
    // fill(255)
    if (arriba == true) {
    posYp1 -= 10
  }
  if (abajo == true) {
    posYp1 += 10
  }
  if (posYp1 > height) {
    posYp1 = height - 20
  }
  if (posYp1 < 0) {
    posYp1 = 0 +10
  }
  raquetaP1()
    raquetaP2(1139, 25)
    pelota()
    cancha()
    strokeWeight(5)
    line(width/2, 0, width/2, height)
   
if (pelotaPosX + pelotaVelX + pelotaTam/2 > width) {
  puntosP1++;
  pelotaPosX = 227; // resetea la posición de la pelota
} else if (pelotaPosX + pelotaVelX + pelotaTam/2 < 0) {
  puntosP2++;
  pelotaPosX = 1139; // resetea la posición de la pelota
}

/*if (pelotaPosX + pelotaTam/2 == 1139 && pelotaPosY + pelotaTam/2 == posYp2 ) {
  if (pelotaVelX > 0) {
    pelotaVelX *= -1;
  }
}

if (pelotaPosX - pelotaTam/2 == 227 && pelotaPosY + pelotaTam/2 == posYp1 ) {
  if (pelotaVelX < 0) {
    pelotaVelX *= -1;
  }
}*/

  textSize(15);
strokeWeight(1);
stroke(255);
text("P1 points: " + puntosP1, 113, 25);
text("P2 points: " + puntosP2, 1114, 25);
}
function keyPressed() {
  if ( key == 'w' || key == 'W') {
    arriba = true
  }
  if ( key == 's' || key == 'S') {
    abajo = true
  }
}
function keyReleased() {
  if ( key == 'w' || key == 'W') {
    arriba = false
  }
  if ( key == 's' || key == 'S') {
    abajo = false
  }
}

function raquetaP2(x, tamaño) {
  //push()

    fill(255)
    rect(x, posYp2, tamaño, 50)
    /*if (posYp2>mouseY) {
    posYp2-=10*velocidadDeP2()
  }
  if (posYp2<mouseY) {
    posYp2+=10*velocidadDeP2()
  }*/
  //pop()
}

function raquetaP1() {
  fill(255)
    rect(227, posYp1, 25, 50)
}
//Hecho por Manuel González Sanabria; Legajo 94778/2; Lic Diseño Multimedial UNLP; Tecnología Multimedial 1; comisión 5; año 2023. 
