class Aventura {
  constructor() {
    this.cantidadDePantallas = 15
      this.textos = []
      this.pantalla = 0
      this.botonSiguiente = new Boton(width/2, height/2, 100, 50, "Siguiente", "siguiente") //importante ultimo parametro
      this.botonVolver = new Boton(width/6, height/2, 100, 50, "Volver", "volver") //importante ultimo parametro
      this.botonUniversal2 = new Boton(width/2, height/3, 100, 50, "Ir a pantalla 0", 0) //importante ultimo parametro
      this.botonUniversal3 = new Boton(width/4, height/2, 100, 50, "Quedarse \n arriba", 13)
      this.botonUniversal4 = new Boton(width/3, height/2, 100, 50, "Bajar", 14)
      this.botonUniversal0 = new Boton(width/2, height/4, 100, 50, "Intentar \n escribir", this.pantalla = 8)
      this.botonUniversal1 = new Boton(width/4, height/4, 100, 50, "Comunicarse \n con señas", this.pantalla  = 8) //importante ultimo parametro
      this.pantalla = 0
      this.textos[0]="La historia comienza con el despertar de Gregorio Samsa, encargado de mantener económicamente a toda su familia. El protagonista amanece con la sensación de haber tenido un sueño intranquilo. Gregorio, se despierta entonces, y se da cuenta de que se ha transformado en un monstruoso insecto.";
    this.textos[1]="Poco a poco, va descubriendo su transformación en un insecto: sus innumerables patas, su abdomen abombado, el caparazón que sustituye a su espalda, sus nuevas y fuertes mandíbulas.";
    this.textos[2]="Pese a la gravedad de la situación, la primera preocupación de Gregorio es justificar su estado en el trabajo. Entonces, a pesar de la transformación, Gregorio intenta levantarse para ir a trabajar, pero no puede controlar sus patas y se queda atrapado en su enorme caparazón.";
    this.textos[3]="La familia de Gregorio escucha ruidos extraños en su habitación y comienza a preocuparse por él. Gregorio intenta hablar con su familia, pero no puede hacerlo debido a su nueva forma. La familia llama a la puerta y Gregorio intenta responder, pero solo puede emitir sonidos extraños. Un gerente de los almacenes donde Gregorio trabaja decide ir a buscarlo a su casa debido a su inusual retraso.";
    this.textos[4]="El protagonista hace un gran esfuerzo por abrir la puerta y, entonces, su familia se percata de su nueva forma: la de un enorme escarabajo.";
    this.textos[5]="Al principio, los familiares del protagonista no saben cómo hacer frente a la nueva situación. Su padre se enfada y lo desprecia. El gerente de Gregorio llega a la casa buscándolo y su familia trata de explicar la situación sin éxito. El mismo, sin embargo, se muestra más interesado en los asuntos comerciales que en la salud de Gregorio.";
    this.textos[6]="Sin embargo, su hermana Grete, la cual siente gran cariño por Gregorio, se apiada de él y se encarga de alimentarlo y cuidarlo. Es aquí cuando Gregorio, piensa en su situación con más detalle por primera vez, y decide que es momento de pedrile ayuda a su familia. ¿Pero cómo si éste ahora es un insecto? podría comunicarse con señas, o intentar escribir con su torpe cuerpo.";
    this.textos[7]="Después de limpiar su habitación durante un tiempo, su hermana comienza a repudiarlo. En otra ocasión, su madre se desmaya al verlo.";
    this.textos[8]="Entonces, su padre culpa al escarabajo de lo sucedido y le lanza manzanas para acribillarle.";
    this.textos[9]="La economía familiar se ve amenazada debido al estado de Gregorio. Entonces, sus miembros tienen que realizar algunos ajustes: recortar los gastos del hogar, reducir la jornada laboral de la criada y debido a la situación económica, deciden alquilar una habitación de su casa a inquilinos para poder pagar las deudas.";
    this.textos[10]="Una noche, Grete toca el violín para los invitados y Gregorio, a quien le encanta su música, decide ir al salón. Sin embargo, este entra en duda debido a que cree que bajar le puede costar caro y quizás su familia lo deje de tratar bien. Si en la página 7 elegiste (intentar comunicar con señas) puedes elegir que Gregorio se quede arriba con (Quedarse arriba) o elegir que baje con (Bajar). Si elegiste (intentar escribir), solo toca (siguiente)";
    this.textos[11]="Después de este hecho, la familia entiende que la situación de Gregorio es insostenible. El protagonista también lo cree así, de modo que decide encerrarse definitivamente en su habitación sin alimentarse. Días más tarde, la criada lo encuentra muerto.";
    this.textos[12]="Luego de que Gregorio, se quedara en la habitación, y además intentase comunicarse escribiendo lo cual termino logrando y perfeccionando, su familia reconsidera el tratarlo como un monstruo, y deciden emprender un viaje alrededor del mundo, luchando contra la sociedad, y contra la indiferencia de la misma ante la adversidad ajena en el mundo, buscando una cura para Gregorio.";
    this.textos[13]="A pesar del intento de Gregorio de que su familia lo tratase como humano, quedandose en el cuarto de arriba, estos no reconsideran su decisión sino hasta cuando es muy tarde, y Gregorio ya yace muerto.";
  }
  //textos hacer this.textos
  dibujar() {
    fill(0)
      textAlign(CENTER);
    image(imagenes[this.pantalla], 0, 0, windowWidth, windowHeight);
    push();
    fill(255)
      rect(0, height/1.35, width/2, height/4);
    pop();
    if (this.pantalla == 0) {
      this.botonSiguiente.dibujar2()
        text("comenzar", 5, 455, 400, 150);
    }
    if (this.pantalla == 1) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[0], 5, 455, 400, 150);
    }
    if (this.pantalla == 2) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[1], 5, 455, 400, 150);
    }
    if (this.pantalla == 3) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[2], 5, 455, 400, 150);
    }
    if (this.pantalla == 4) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[3], 5, 455, 400, 150);
    } else    if (this.pantalla == 5) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[4], 5, 455, 400, 150);
    }
    if (this.pantalla == 6) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[5], 5, 455, 400, 150);
    }
    if (this.pantalla == 7 ) {
      this.botonUniversal0.dibujar2()
        this.botonUniversal1.dibujar2()
        text(this.textos[6], 5, 455, 400, 150);
    }
    if (this.pantalla == 8) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[7], 5, 455, 400, 150);
    }
    if (this.pantalla == 9) {
      background(200)
        text(this.textos[8], 5, 455, 400, 150);
      miJuego.dibujar();
      if (dist(Manzana.posX, Manzana.posY, pGreg.posXPG, mouseY) < 40) {
        this.botonVolver.dibujar2()
          this.botonSiguiente.dibujar2()
      }
    }
    if (this.pantalla == 10) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        text(this.textos[9], 5, 455, 400, 150);
    }
    if (this.pantalla == 11) {
      this.botonVolver.dibujar2()
        this.botonSiguiente.dibujar2()
        this.botonUniversal3.dibujar2()
         this.botonUniversal4.dibujar2()
        text(this.textos[10], 5, 455, 400, 150);
    }
    if (this.pantalla == 12) {
      this.botonVolver.dibujar2()
        this.botonUniversal2.dibujar2()
        text(this.textos[12], 5, 455, 400, 150);
    }
    if (this.pantalla == 13) {
        this.botonUniversal2.dibujar2()
        text(this.textos[13], 5, 455, 400, 150);
    }
    if (this.pantalla == 14) {
      this.botonVolver.dibujar2()
        this.botonUniversal2.dibujar2()
        text(this.textos[11], 5, 455, 400, 150);
    }
  }
  mouseClick() {
    this.botonSiguiente.mouseClicked()
      this.botonVolver.mouseClicked()
      //RESTRINGIMOS FUNCIONAMIENTO ACORDE A CADA PANTALLA
      if (this.pantalla == 7) {
      this.botonUniversal0.mouseClicked()
        this.botonUniversal1.mouseClicked()
    }
    if (this.pantalla == 11) {
      this.botonUniversal3.mouseClicked()
       this.botonUniversal4.mouseClicked()
    }
    if (this.pantalla == 12) {
      this.botonUniversal2.mouseClicked()
    }
    if (this.pantalla == 13) {
      this.botonUniversal2.mouseClicked()
    }
    if (this.pantalla == 14) {
      this.botonUniversal2.mouseClicked()
        miJuego.reiniciar()
    }
  }
  cambiarPantalla(param) {
    console.log(this.pantalla)
      console.log(param)

      if (param == "siguiente" && this.pantalla < this.cantidadDePantallas) {

      this.pantalla++
    } else if (param == "volver" && this.pantalla > 0) {
      this.pantalla--
    } else if (param != "volver" && param != "siguiente") {
      this.pantalla=param
    }
  }
}
