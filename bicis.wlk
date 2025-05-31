
//bici

class Bici{
  const rodado
  const largo
  const marca
  const accesorios

  method altura() = rodado - 2.5 + 15
  method velocidad() = if (largo > 120) rodado + 6 else rodado + 2
  method carga() = accesorios.sum{a => a.carga()}
  method tieneLuz() = accesorios.any{a => a.esLuminoso()}
  method agregarAccesorio(unAccesorio)
  method cantidadAccesoriosLivianos() = accesorios.count{a => a.peso() < 1}
}

//accesorios

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
}