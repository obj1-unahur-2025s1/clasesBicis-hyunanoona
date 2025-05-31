import bicis.*
import accesorios.*


class Deposito{
  const bicis = []

  method agregarBicis(listaDeBicis){
    if (listaDeBicis.any{b => bicis.contains(b)}){
        //self.error("no se puede agregar dos veces la misma bici")
        throw new Exception(message = "no se puede agregar dos veces la misma bici")
    }
    if (listaDeBicis.any{b => listaDeBicis.occurrencesOf(b) > 1}){
        self.error("hay bicis duplicadas dentro de la misma lista de nuevas bicis")
    }
    if (not listaDeBicis.asSet().intersection(bicis.asSet()).isEmpty()){
        self.error("hay alguna bici en la lista de nuevas que esta en bicis")
    }
    bicis.addAll(listaDeBicis)
  }
  method bicisRapidas() = bicis.filter{b => b.velocidad() > 25}
  
  method marcasDeLasBicis() = bicis.map{b => b.marca()}.asSet()
  
  method esDepositoNocturno() = bicis.all{b => b.tieneLuz()}
  
  method tieneBiciParaLlevar(unaCarga) = bicis.any{b => b.carga() > unaCarga}

  method marcaDeLaBiciMasRapida() = bicis.max{b => b.velocidad()}.marca()

  method cargaDeLasBicisLargas() = bicis.filter{b => b.largo() > 170}.sum{b => b.carga()}

  method cantidadDeBicisSinAccesorio() = bicis.count{b => b.accesorios().isEmpty()}

  method esBiciCompañera(unaBici, otraBici) = unaBici.marca() == otraBici.marca() and (unaBici.largo() - otraBici.largo()) < 10
  
  method cualesBicisSonCompañerasDe(unaBici) {
    if (bicis.contains(unaBici)){
        self.error(unaBici.toString() + "no puede ser compañera de si misma")
    }
    return bicis.filter{b => self.esBiciCompañera(unaBici, b)}
  }
}