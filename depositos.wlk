import bicis.*

class Deposito{
  const bicis = []

  method bicisRapidas() = bicis.filter{b => b.velocidad() > 25}
}