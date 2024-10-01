import luke.*
object alambique {
    var combustible = 100
    method combustible() = combustible 
    var esRapido = true
    method esRapido() = esRapido
    method cambiarRapidez() {
      esRapido = not esRapido
    } 
    method sufrirConsecuencia() {
      combustible -= 10
    }
}
object superChatarra {
  var combustible = 20
  var tieneMunicion = false
  method combustible()= if (tieneMunicion) 70 else 30
  method sufrirConsecuencia() {
      tieneMunicion = not tieneMunicion
    }
  method esRapido() = tieneMunicion
}

object antiguallaBlindada {
  var combustible = 100
  method combustible() = combustible 
  var cantGangsters = 7
  method cantGangsters() = cantGangsters 

  method esRapido() = cantGangsters < 5
  method sufrirConsecuencia() {
      cantGangsters = 1.max(cantGangsters-1)
    }
}
object superConvertible {
  var convertidoEn= alambique
  method esRapido() = convertidoEn.esRapido()
  method sufrirConsecuencia() = convertidoEn.sufrirConsecuencia() 
  method convertirseEn(unVehiculo) {
    convertidoEn = unVehiculo
  }
}