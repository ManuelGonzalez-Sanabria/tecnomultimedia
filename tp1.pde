/*texto1(pantalla 1); La lima existe desde prácticamente la era Preindustrial; es una herramienta manual sumamente sencilla pero imprescindible en la caja de herramientas de casi cualquier persona. Su principal uso es el de desbaste en piezas metálicas, de madera y en menor medida, plásticas. Es una herramienta ubicua, con decenas de modelos distintos.
 //En esta presentación vamos a ver los distintos de lima, y las diferencias entre una lima una escofina y una rasqueta.
 //texto1; letras que se agranden:
 //texto2(pantalla1); En español utilizamos vulgarmente la palabra lima para referirnos a un conjunto de herramientas manuales de arranque de viruta; entre ellas tenemos las limas propiamente dichas, las escofinas y las rasquetas.
 //texto2; letras que se agranden un poco más abajo que las otras.
 //texto3(pantalla1); Limas propiamente dichas
 //texto3; letras que se agranden a la derecha del texto 2.
 //texto4(pantalla1);Son herramientas manuales —como ya vimos— que permiten realizar el desbaste de metales en general mientras su dureza no sea excesiva. Existen muchos modelos distintos y se utilizan en diversas industrias: desde la metalúrgica hasta la carpintería, la construcción, la medicina y los cuidados personales.
 //Las limas utilizadas en construcción y metalmecánica son también las más comunes en las tiendas del ramo: las planas paralelas, las media caña y las redondas (modelos que veremos un poco más adelante, ya que comparten su geometría con otros tipos).
 //La construcción de una lima es sencilla: se parte de un fleje de acero al cual se le aplican sucesivos fresados en ángulo; primero en un ángulo positivo y luego en líneas secantes a las primeras. De ese modo se obtiene un patrón en X llamado el picado, que es el generatriz de los dientes.
 //texto4; letras que se agranden (abajo) del texto 3.
 //se borra todo lo anterior, osea el texto cuando empieza la segunda pantalla (pantalla2).
 //texto5;(pantalla2);Escofinas.
 //texto6;(pantalla2);Son similares a las limas pero se utilizan para materiales más blandos que los metales, como maderas y algunos plásticos que podrían empastar las limas.
 //La diferencia principal se da en el picado: los dientes de las escofinas son más grandes y la geometría es distinta. Están dispuestos en bandas horizontales y paralelas entre sí, lo cual permite atacar la madera más fácilmente, sin permitir que las partículas de aserrín queden atrapadas entre los dientes.
 //Tal como sucede con las limas, existen distintas geometrías: planas, redondas, triangulares, cuadradas y media caña.
 //se borra todo lo anterior, osea el texto cuando empieza la tercera pantalla (pantalla3)
 
 //texto7; (pantalla3) Rasquetas.
 //texto8; (pantalla3) Esta herramienta se puede adquirir en casas
 especializadas o bien se puede fabricar a partir de una lima vieja. 
 A diferencia de la escofina y la lima, la rasqueta
 hace uso de la punta para lograr el arranque de viruta. Su trabajo es similar al 
 de una gubia: mediante el arranque de viruta se logra el alisado
 de superficies metálicas (que luego se controlan con un mármol de ajuste y azul de prusia).
 
 La forma de usar esta herramienta es muy sencilla: se pinta la superficie de un mármol
 de ajuste con azul de prusia y se apoya en él la superficie a nivelar.
 
 Al retirarla, el azul de prusia indicará los puntos que hay que rebajar con la rasqueta.
 La tarea se repite hasta que la superficie esté razonablemente plana. 
 
 Esto es útil cuando la pieza es pequeña y no se dispone de una rectificadora.*/
/*String pantalla= ("p1");
float tamaño= 1;
int seg=0;
PImage L, E, R;
PFont miTipo;

void setup() {
  size (640, 480);
  L = loadImage("Perfiles limas..jpg");
  E = loadImage("Escofinas.jpg");
  R = loadImage("Rasquetas.jpg");
  miTipo= createFont("Calibri Bold", 15);
  textFont(miTipo);
}
void draw() {
  background(0);
  fill(255, 255, 255);
  textSize(tamaño);
  switch(pantalla) {
  case "p1":
    if (millis()-seg<=10000) {
      text("¡Hola comisión 5!", 320, 240);
    }
  } else

text("Holis", 320, 240);
if (tamaño<=15) {
  tamaño+=0.25;
}
if (millis()-seg>=20000) {
  pantalla= "p2";
  seg=millis();
}
break;
}*/
/*String pantalla = "p1";
float tamaño = 1;
int seg = 0;
PImage L, E, R;
PFont miTipo;

void setup() {
  size (640, 480);
  L = loadImage("Perfiles limas..jpg");
  E = loadImage("Escofinas.jpg");
  R = loadImage("Rasquetas.jpg");
  miTipo = createFont("Calibri Bold", 15);
  textFont(miTipo);
}

void draw() {
  background(0);
  fill(255, 255, 255);
  textSize(tamaño);
  switch(pantalla) {
    case "p1":
      if (millis()-seg<=10000) {
        text("¡Hola comisión 5!", 320, 240);
      } else {
        text("Holis", 320, 240);
        if (tamaño<=15) {
          tamaño+=0.25;
        }
        if (millis()-seg>=20000) {
          pantalla= "p2";
          seg=millis();
        }
      }
      break;
  }
}*/
String pantalla = "p1";
float tamaño = 10;
int seg = 0;
int r, g, b;
int h=0;
boolean tamDelTexto=true;
PImage L, E, R;
PFont miTipo;

void setup() {
  size(640, 480);
  L = loadImage("Perfiles limas..jpg");
  E = loadImage("Escofinas.jpg");
  R = loadImage("Rasquetas.jpg");
  miTipo = loadFont("Calibri-Bold-15.vlw");
  textFont(miTipo);
}

void draw() {
  background(0);
  strokeWeight(15);
  L.resize(640, 480);
  E.resize(640, 480);
  R.resize(640, 480);
  fill(255, 255, 255);
  textSize(tamaño);
  switch(pantalla) {
    case "p1":
      image(L, 0, 0);
      if (millis() - seg <= 10000) {
        text("¡Hola comisión 5!", width/2,height/2);
        if (tamaño <= 20) {
          tamaño += 0.25;
           seg = millis();
        }
        break;
      } else {
        if (millis() - seg <= 20000) {
        colorMode(HSB);
        stroke(255);
      fill(h, 255, 255);
   text("En esta presentación vamos a ver los distintos tipos de lima,", 0, height/2 - 20);
   text("y las diferencias entre una lima, una escofina y una rasqueta.", 0, height/2 + 20);
      h+=4;
      if (h>=255) {
        h=0;
        }
          boolean tamDelTexto = false;
          if (!tamDelTexto){ 
             textSize(tamaño);
          }
           tamDelTexto = true;
           if (tamDelTexto) {
           if (tamaño <=25) {
               tamaño += 0.1;   
           }
        }
        break;
      }
      }
       if (millis() - seg <= 45000) {
  colorMode(HSB);
  stroke(255);
  fill(h, 255, 255);
  textSize(18);
  text("Limas:", 15, height/2 - 80); 
  text("Son herramientas manuales —como ya vimos— que permiten realizar", 15, height/2 - 60);
  text("el desbaste de metales en general mientras su dureza no sea excesiva.", 15, height/2 - 40);
  text("Existen muchos modelos distintos y se utilizan en diversas industrias:", 15, height/2 - 20);
  text("desde la metalúrgica hasta la carpintería, la construcción,", 15, height/2);
  text("la medicina y los cuidados personales.", 15, height/2 + 20);
  h+=4;
  if (h>=255) {
    h=0;
  }
          boolean tamDelTexto = false;
          if (!tamDelTexto){ 
             textSize(tamaño);
          }
           tamDelTexto = true;
           if (tamDelTexto) {
           if (tamaño <=25) {
               tamaño += 0.1;      
           }
        }
        break;
      }
    case "p2":
      image(E, 0, 0);
      if (millis() - seg <= 60000) {
        pantalla = "p2";
       if (millis() - seg <= 70000) {
  colorMode(HSB);
  stroke(255);
  fill(h, 255, 255);
  textSize(18); 
  text("Escofinas:", 15, height/2 - 120);
  text("Son similares a las limas pero se utilizan para materiales más blandos", 15, height/2 - 100);
  text("que los metales, como maderas y algunos plásticos que podrían empastar las limas.", 15, height/2 - 80);
  text("La diferencia principal se da en el picado:", 15, height/2 - 60);
  text("los dientes de las escofinas son más grandes", 15, height/2 - 40);
  text("y la geometría es distinta. Están dispuestos en bandas", 15, height/2 - 20);
  text("horizontales y paralelas entre sí, lo cual permite atacar la madera más fácilmente,", 15, height/2);
  text("sin permitir que las partículas de aserrín queden atrapadas entre los dientes.", 15, height/2 + 20);
  h+=4;
  if (h>=255) {
    h=0;
  }
      }
      break;
      }
      if (millis() - seg <= 75000) {
        pantalla = "p3";
         
      }
      
      break;
    case "p3":
    if (millis() - seg <= 78000) {
       image(R, 0, 0);
  colorMode(HSB);
  stroke(255);
  fill(h, 255, 255);
  textSize(16); 
  text("Rasquetas:", 15, height/2 - 120);
  text("Esta herramienta se puede adquirir en casas", 15, height/2 - 100);
 text("especializadas o bien se puede fabricar a partir de una lima vieja.", 15, height/2 - 80);
  text("que los metales, como maderas y algunos plásticos que podrían empastar las limas.", 15, height/2 - 60);
  text(" A diferencia de la escofina y la lima, la rasqueta", 15, height/2 - 40);
 text("hace uso de la punta para lograr el arranque de viruta. Su trabajo es similar al", 15, height/2 - 20);
  text("de una gubia: mediante el arranque de viruta se logra el alisado", 15, height/2);
 text("de superficies metálicas (que luego se controlan con un mármol de ajuste y azul de prusia).", 15, height/2 + 20);
  text("La forma de usar esta herramienta es muy sencilla: se pinta la superficie de un mármol", 15, height/2 + 40);
 text("de ajuste con azul de prusia y se apoya en él la superficie a nivelar.", 15, height/2 + 60);
  text("Al retirarla, el azul de prusia indicará los puntos que hay que rebajar con la rasqueta.", 15, height/2 + 80);
 text("La tarea se repite hasta que la superficie esté razonablemente plana.", 15, height/2 + 100);
  text(" Esto es útil cuando la pieza es pequeña y no se dispone de una rectificadora.", 15, height/2 + 120);
  h+=4;
  if (h>=255) {
    h=0;
    seg = millis();
  }
      rect(390, 400, 200, 50);
      boolean BotonDeInicio=(mouseX>=390 && mouseX<=590 && mouseY>=400 && mouseY<=450);
      if (!BotonDeInicio) {
        fill(0);
        textSize(20);
        text("Reiniciar", 450, 425);
      } else {
        fill(255);
        textSize(20);
        text("Reiniciar", 450, 425);
        if (mousePressed) {
          pantalla = "p1";
          tamaño = 10;
    seg = millis();
    tamaño = 10;
    h=0;
  }
}
  }
}
}
// hecho por Manuel González Sanabria tecnomm1 año 2023 legajo 94778/2 diseño multimedia FDA 
