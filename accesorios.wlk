import depositos.*
import bicis.*

class Farolito{
  method peso() = 0.5
  
  method carga() = 0
  
  method esLuminoso() = true
}

class Canasto {
  const volumen  
  
  method peso() = volumen / 10
  
  method carga() = volumen * 2
  
  method esLuminoso() = false
}

class Morral{
  const largo
  var tieneOjoDeGato

  method ponerOjoDeGato() {tieneOjoDeGato = true}
  
  method quitarOjoDeGato() {tieneOjoDeGato = false}
  
  method peso() = 1.2
  
  method carga() = largo / 3
  
  method esLuminoso() = tieneOjoDeGato

  /*
  method initialize(){
    if (tieneOjoDeGato){
      self.error(tieneOjoDeGato.toString() + "no es un valor booleano")
    }
  }
  */
}

/*
etapa 5:

hay que agregar una clase nueva, respetando el polimorfismo necesario para no romper el codigo al 
ejecutar cualquier cosa. 

*/
