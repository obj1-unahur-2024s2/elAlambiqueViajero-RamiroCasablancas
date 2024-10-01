import vehiculos.*
object luke {
  const lugaresVisitados=[]
  var vehiculo= alambique
  method cantLugaresVisitados() = lugaresVisitados.size() 
  method ultimoRecuerdo()= lugaresVisitados.last().recuerdo()
  method viajarLugar(unLugar) {
    if (self.puedeViajar(unLugar)){
    lugaresVisitados.add(unLugar.nombre())
    vehiculo.sufrirConsecuencia()
    }
  }
  method puedeViajar(unLugar) {
    return unLugar.restriccion()
  }
  method cambiarVehiculo(unVehiculo) {
    vehiculo = unVehiculo
  }
}

object paris {
  var nombre = "Paris"
  method nombre() = nombre  
  method recuerdo() = "Llavero Torre Eiffel" 
  method restriccion() {
    luke.vehiculo.combustible() >= 50
  }
}

object buenosAires {
  var nombre = "Buenos Aires"
  method nombre() = nombre 
  var presidente = "Peron"
  method recuerdo()= if (presidente == "Peron") "Mate con Yerba" else "Mate sin Yerba"
  method cambiarPresidente( unPresidente){
    presidente=unPresidente
  }
  method restriccion() {
    luke.vehiculo.esRapido()
  }
}

object bagdad {
  var nombre = "Bagdad"
  method nombre() = nombre 
  var anio = 2024
  method anio() = anio 
  method recuerdo() {
    if(anio.between(1914,1918) or anio.between(1939, 1945)){
        return "Arma Destruccion Masiva"
    }
    else if(anio < 1914 or anio.between(1919, 1938)){
        return "Bidón con petróleo crudo"
    }
    else {
        return "Réplica jardines Babilonia"
    }
  }
  method cambiarAnio(nuevoAnio){
    anio = nuevoAnio
  }
  method restriccion(){} 
}

object lasVegas {
    var nombre = "Las Vegas"
  method nombre() = nombre 
  var paisConmemorado = paris
  method recuerdo() = paisConmemorado.recuerdo() 
  method conmemorarAPais(unPais) {
    paisConmemorado = unPais
  }
  method restriccion() = paisConmemorado.restriccion() 

}


