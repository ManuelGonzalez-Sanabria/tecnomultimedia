//https://youtu.be/hPfm8d5F8oY
PImage[] imagenes = new PImage[15];
String[] textos = new String[15];
int pantalla= 0;
boolean decisionclave;
void setup() {
  size(600, 600);
  background(0);
  textSize(12);
  for (int i = 0; i <= 14; i++) {
    imagenes[i] = loadImage(i + ".jpg");
  }
  textos[0]="La historia comienza con el despertar de Gregorio Samsa, encargado de mantener económicamente a toda su familia. El protagonista amanece con la sensación de haber tenido un sueño intranquilo. Gregorio, se despierta entonces, y se da cuenta de que se ha transformado en un monstruoso insecto.";
  textos[1]="Poco a poco, va descubriendo su transformación en un insecto: sus innumerables patas, su abdomen abombado, el caparazón que sustituye a su espalda, sus nuevas y fuertes mandíbulas.";
  textos[2]="Pese a la gravedad de la situación, la primera preocupación de Gregorio es justificar su estado en el trabajo. Entonces, a pesar de la transformación, Gregorio intenta levantarse para ir a trabajar, pero no puede controlar sus patas y se queda atrapado en su enorme caparazón.";
  textos[3]="La familia de Gregorio escucha ruidos extraños en su habitación y comienza a preocuparse por él. Gregorio intenta hablar con su familia, pero no puede hacerlo debido a su nueva forma. La familia llama a la puerta y Gregorio intenta responder, pero solo puede emitir sonidos extraños. Un gerente de los almacenes donde Gregorio trabaja decide ir a buscarlo a su casa debido a su inusual retraso.";
  textos[4]="El protagonista hace un gran esfuerzo por abrir la puerta y, entonces, su familia se percata de su nueva forma: la de un enorme escarabajo.";
  textos[5]="Al principio, los familiares del protagonista no saben cómo hacer frente a la nueva situación. Su padre se enfada y lo desprecia. El gerente de Gregorio llega a la casa buscándolo y su familia trata de explicar la situación sin éxito. El mismo, sin embargo, se muestra más interesado en los asuntos comerciales que en la salud de Gregorio.";
  textos[6]="Sin embargo, su hermana Grete, la cual siente gran cariño por Gregorio, se apiada de él y se encarga de alimentarlo y cuidarlo. Es aquí cuando Gregorio, piensa en su situación con más detalle por primera vez, y decide que es momento de pedrile ayuda a su familia. ¿Pero cómo si éste ahora es un insecto? podría comunicarse con señas, o intentar escribir con su torpe cuerpo.";
  textos[7]="Después de limpiar su habitación durante un tiempo, su hermana comienza a repudiarlo. En otra ocasión, su madre se desmaya al verlo.";
  textos[8]="Entonces, su padre culpa al escarabajo de lo sucedido y le lanza manzanas para acribillarle.";
  textos[9]="La economía familiar se ve amenazada debido al estado de Gregorio. Entonces, sus miembros tienen que realizar algunos ajustes: recortar los gastos del hogar, reducir la jornada laboral de la criada y debido a la situación económica, deciden alquilar una habitación de su casa a inquilinos para poder pagar las deudas.";
  textos[10]="Una noche, Grete toca el violín para los invitados y Gregorio, a quien le encanta su música, decide ir al salón. Pronto, el insecto es descubierto por los inquilinos, quienes terminan abandonando la casa sin pagar su estancia. Si en la página 7 elegiste (intentar comunicar con señas) puedes elegir que Gregorio se quede arriba con (Gregorio se queda arriba) o elegir que baje con (siguiente). Si elegiste (intentar escribir), solo toca (siguiente)";
  textos[11]="Después de este hecho, la familia entiende que la situación de Gregorio es insostenible. El protagonista también lo cree así, de modo que decide encerrarse definitivamente en su habitación sin alimentarse. Días más tarde, la criada lo encuentra muerto.";
  textos[12]="Luego de que Gregorio, se quedara en la habitación, y además intentase comunicarse escribiendo lo cual termino logrando y perfeccionando, su familia reconsidera el tratarlo como un monstruo, y deciden emprender un viaje alrededor del mundo, luchando contra la sociedad, y contra la indiferencia de la misma ante la adversidad ajena en el mundo, buscando una cura para Gregorio.";
  textos[13]="A pesar del intento de Gregorio de que su familia lo tratase como humano, quedandose en el cuarto de arriba, estos no reconsideran su decisión sino hasta cuando es muy tarde, y Gregorio ya yace muerto.";
}



void draw() {
  background(0);
  switch(pantalla) {
  case 0:
    interfaz("siguiente", "", "");
    break;
  case 1:
    interfaz("siguiente", "", "");
    println("pantalla 0");
    stroke(255);
    text(textos[0], 5, 455, 400, 150);
    break;
  case 2:
    interfaz("siguiente", "", "");
    text(textos[1], 5, 455, 400, 150);
    println("pantalla 1");
    println("pantalla 2");
    break;
  case 3:
    interfaz("siguiente", "", "");
    text(textos[2], 5, 455, 400, 150);
    println("pantalla 3");
    break;
  case 4:
    interfaz("siguiente", "", "");
    text(textos[3], 5, 455, 400, 150);
    println("pantalla 4");
    break;
  case 5:
    interfaz("siguiente", "", "");
    text(textos[4], 5, 455, 400, 150);
    println("pantalla 5");
    break;
  case 6:
    interfaz("siguiente", "", "");
    text(textos[5], 5, 455, 400, 150);
    println("pantalla 6");
    break;
  case 7:
    interfaz("intentar escribir", "intentar comunicar \n con señas", "");
    text(textos[6], 5, 455, 400, 150);
    println("pantalla 7");
    break;
  case 8:
    interfaz("siguiente", "", "");
    text(textos[7], 5, 455, 400, 150);
    println("pantalla 8");
    break;
  case 9:
    interfaz("siguiente", "", "");
    text(textos[8], 5, 455, 400, 150);
    println("pantalla 9");
    break;
  case 10:
    interfaz("siguiente", "", "");
    text(textos[9], 5, 455, 400, 150);
    println("pantalla 10");
    break;
  case 11:
    interfaz("siguiente", "", "Gregorio se queda arriba");
    text(textos[10], 5, 455, 400, 150);
    println("pantalla 11");
    break;
  case 12:
    interfaz("siguiente", "", "");
    text(textos[12], 5, 455, 400, 150);
    println("pantalla 12");
    break;
  case 13:
    interfaz("siguiente", "", "");
    text(textos[13], 5, 455, 400, 150);
    println("pantalla 13");
    break;
  case 14:
    interfaz("siguiente", "", "");
    text(textos[11], 5, 455, 400, 150);
    println("pantalla 14");
  }
}
void mouseClicked() {
  switch(pantalla) {
  case 0:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 1:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 2:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 3:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 4:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 5:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 6:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 7:
    if (boton(400, 550)) {
      decisionclave = (true);
      pantalla += 1;
    } else {
      if (boton(400, 450)) {
        decisionclave = (false);
        pantalla += 1;
      } else {
        if (boton2(400, 550)) {
          pantalla += 1;
        }
      }
    }
    break;
  case 8:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 9:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 10:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    break;
  case 11:
    if (boton(400, height-150)) {
      pantalla += 1;
    }
    if (decisionclave == (false)) {
      boton(400, 550);
    } else {
      if (boton(400, 550)) {
        pantalla = 13;
      }

      if (decisionclave == (true)) {
        boton2(400, 550);
        if (boton2(400, 550) == (false)) {
          pantalla = 14;
        }
      }
      /*} else {
       if (decisionclave == (false)){
       boton(400, 450);
       boton2(400,550);
       if
       pantalla = 14;
       } else {
       if  (boton(400, 450)){
       pantalla += 1;
       }
       }*/
    }
    break;
  case 12:
    if (boton(400, height-150)) {
      pantalla = 0;
    }

    break;
  case 13:
    if (boton(400, height-150)) {
      pantalla = 0;
    }
    break;
  case 14:
    if (boton(400, height-150)) {
      pantalla = 0;
    }
  }
}
//hecho por Manuel González Sanabria, estudiante de Lic. Diseño Multimedial, legajo 94778/2. UNLP 2023. (comision 5 tencnología multimedial 1).
