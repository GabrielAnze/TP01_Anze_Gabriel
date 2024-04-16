//Ejercicio21
PVector puntoA, puntoB, puntoC, puntoD;
int distlinea;

public void setup(){ 
 size(500, 500);
 distlinea= 60;
 puntoA= new PVector(0, distlinea);
  
  while(puntoA.y < height){
    dibujarEscalon();
    actualizarCoordenadasA();
  }
  }
  public void dibujarEscalon(){
    stroke(#1AEAFF);
    strokeWeight(4);
    puntoB= new PVector(puntoA.x+distlinea,puntoA.y);
    line(puntoA.x,puntoA.y,puntoB.x,puntoB.y);
    puntoC= new PVector(puntoB.x,puntoB.y+distlinea);
    line(puntoB.x,puntoB.y, puntoC.x, puntoC.y);
    dibujarPunto();
  }
  public void dibujarPunto(){
    stroke(255, 0, 0);
    strokeWeight(10);
    puntoD = new PVector(puntoB.x, puntoB.y-10);
    point(puntoD.x,puntoD.y);
  }
  public void actualizarCoordenadasA(){
    puntoA.x= puntoC.x;
    puntoA.y= puntoC.y;
  }
    
    