import depositos.*
import accesorios.*

//bici

class Bici{
  const rodado
  const largo
  const marca
  const accesorios = []

  method marca() = marca

  method largo() = largo

  method accesorios() = accesorios
  
  method altura() = rodado * 2.5 + 15
  
  method velocidad() = if (largo > 120) rodado + 6 else rodado + 2
  
  method carga() = accesorios.sum{a => a.carga()}

  method peso() = rodado / 2 + accesorios.sum{a => a.peso()}
  
  method tieneLuz() = accesorios.any{a => a.esLuminoso()}
  
  method agregarAccesorio(unAccesorio) {accesorios.add(unAccesorio)}
  
  method cantidadAccesoriosLivianos() = accesorios.count{a => a.peso() < 1}

  method initialize(){
    if (not marcas.validas().contains(marca)){
      self.error(marca.toString() + "no es una marca valida")
    } 
  }
}

//marcas 

object olmo{}

object legnano{}

object marcas{
  method validas() = [olmo, legnano]
}