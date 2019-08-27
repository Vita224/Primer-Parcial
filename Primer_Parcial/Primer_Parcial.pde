float posX = 20;    //posX, determina la posicion inical de                             //
float posX2 = 580;  //los circulos que se mueven                                       //
float posX3 = 20;                                                                      //  
float velX = 1;     //velX, determina la velocidad en la que se mueven                  // 
float velX2 = 1;    // los circlos                                                     // 
float velX3 = 1;                                                                       //  //Aqui se declaran las variables
float diam = 40;                                                                       //  //que se usan en el codigo, variables de tipo float
float linea=10;                                                                        //
float linea2=590;   //Las variables "linea" definen las posicines                      //
float linea3=10;    //de las lineas                                                    //
float linea4=590;                                                                      //
float linea5=10;                                                                       // 
float linea6=590;                                                                      //

void setup() {
  size(600, 600);
}

void draw() {
  background(200);

  posX = posX+velX;     //Aqui es donde se indica que posX va a variar
  posX2 = posX2+velX2;  //por los valores arriba indicados
  posX3 = posX3+velX3;

  if (posX < diam/2) {  
    velX=1;                                 //En este "if" se indica los limites de posX,
  } else if (posX > width-diam/2) {         //dando el efecto de que rebota en los laterales del size
    velX=-1;                                // 
  } else if (posX < 100 && posX < 100) {    //       
    fill(#EDC130);                          //
  } else if (posX > 100 && posX < 200) {    // 
    fill (#F55E63);                         //
  } else if (posX > 200 && posX < 300) {    //    //En estos if se indica el color de los circulos, dependiendo
    fill (#529AF0);                         //    //los limites en los que se encuentren
  } else if (posX > 300 && posX < 400) {    //
    fill(#EDC130);                          //
  } else if (posX > 400 && posX < 500) {    //
    fill (#F55E63);                         //
  } else if (posX > 500 && posX > 500) {    //
    fill (#529AF0);                         //
  }

  if (posX2 < diam/2) {
    velX2=1;
  } else if (posX2 > width-diam/2) {
    velX2=-1;
  } else if (posX2 < 100 && posX2 < 100 ) {
    fill(#EDC130);
  } else if (posX2 > 100 && posX2 < 200) {
    fill (#F55E63);
  } else if (posX2 > 200 && posX2 < 300) {
    fill (#529AF0);
  } else if (posX2 > 300 && posX2 < 400 ) {
    fill(#EDC130);
  } else if (posX2 > 400 &&posX2 < 500) {
    fill (#F55E63);
  } else if (posX2 > 500 && posX2 > 500) {
    fill (#529AF0);
  }

  if (posX3 < diam/2) {
    velX3=1;
  } else if (posX3 > width-diam/2) {
    velX3=-1;
  } else if (posX3 > 0 && posX3 < 100 ) {
    fill(#EDC130);
  } else if (posX3 > 100 &&posX3 < 200) {
    fill (#F55E63);
  } else if (posX3 > 200 && posX3 < 300) {
    fill (#529AF0);
  } else if (posX3 > 300 && posX3 < 400 ) {
    fill(#EDC130);
  } else if (posX3 > 400 && posX3 < 500) {
    fill (#F55E63);
  } else if (posX3 > 500 && posX3 < 600) {
    fill (#529AF0);
  }

  ellipse(posX, 150, 40, 40);     //   
  ellipse(posX2, 300, 40, 40);    //En este bloque del codigo se ingresa el valor de posX en los circulos
  ellipse(posX3, 450, 40, 40);    //

  if (mouseX > 0 && mouseX < 100) {             //
    fill(#EDC130);                              //
    ellipse(mouseX, mouseY, 40, 40);            //
  } else if (mouseX > 100 && mouseX < 200) {    //
    fill (#F55E63);                             //
    ellipse(mouseX, mouseY, 40, 40);            //
  } else if (mouseX > 200 & mouseX < 300) {     //
    fill (#529AF0);                             //
    ellipse(mouseX, mouseY, 40, 40);            //    //En este bloque del codigo, se crea un circulo que 
  } else if (mouseX > 300 && mouseX < 400) {    //    //sigue la posicion del mouse y cambia de color dependienndo 
    fill(#EDC130);                              //    //los limites en los que se encuentre
    ellipse(mouseX, mouseY, 40, 40);            //
  } else if (mouseX > 400 & mouseX < 500) {     //
    fill (#F55E63);                             //
    ellipse(mouseX, mouseY, 40, 40);            //
  } else if (mouseX > 500 && mouseX < 600) {    //
    fill (#529AF0);                             //
    ellipse(mouseX, mouseY, 40, 40);            //
  }

  line(0, linea, 100, linea);        //            
  linea=linea+0.5;                   //
  line(100, linea2, 200, linea2);    //
  linea2=linea2-0.5;                 //
  line(200, linea3, 300, linea3);    //
  linea3=linea+0.5;                  //    //En este bloque del codigo se programan 6 lineas
  line(300, linea4, 400, linea4);    //    //que suben y bajan, las impares bajan y las pares suben
  linea4=linea2-0.5;                 //
  line(400, linea5, 500, linea5);    //
  linea5=linea+0.5;                  //
  line(500, linea6, 600, linea6);    //
  linea6=linea2-0.5;                 //

  point(mouseX-10, mouseY-10);    //Aqui se programa un punto que se crea siguiendo la posisiocn del mouse
}                                 //restandole 10 a esa posicion
