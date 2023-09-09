let pelotaVelX
  let pelotaVelY
  let pelotaPosX
  let pelotaPosY
  function pelota() {
  fill(255);
  circle(pelotaPosX, pelotaPosY, pelotaTam)
    pelotaPosX+=pelotaVelX
    pelotaPosY+=pelotaVelY
    if (pelotaPosY-pelotaTam/2<=0||pelotaPosY+pelotaTam/2>=height) {
    pelotaVelY*=-1
  }
  if (pelotaPosX+pelotaTam/2>=1139&&pelotaPosX+pelotaTam/2<=1189&&pelotaPosY+pelotaTam>posYp2 &&pelotaPosY-pelotaTam<posYp2+80&& mouseY<height/2) {
    pelotaVelX*=-1
     pelotaVelY *= 1
     } else {
        if (pelotaPosX+pelotaTam/2>=1139&&pelotaPosX+pelotaTam/2<=1189&&pelotaPosY+pelotaTam>posYp2 &&pelotaPosY-pelotaTam<posYp2+80&& mouseY>height/2) {
    pelotaVelX*=-1
     pelotaVelY *= -1
        }
     }
  if (pelotaPosX+pelotaTam/2>=227 && pelotaPosX+pelotaTam/2<=277 && pelotaPosY+pelotaTam>posYp1 && pelotaPosY-pelotaTam<posYp1+80 && posYp1<height/2) {
    pelotaVelX*=-1
    pelotaVelY *= 1
  } else {
   if (pelotaPosX+pelotaTam/2>=227 && pelotaPosX+pelotaTam/2<=277 && pelotaPosY+pelotaTam>posYp1 && pelotaPosY-pelotaTam<posYp1+80 && posYp1>height/2) {
    pelotaVelX*=-1
    pelotaVelY *= -1
   }
  }
  }
function cancha() {
  stroke(255)
    strokeWeight(15)
    noFill()
    rect(113, 50, 1139, 440)
}
