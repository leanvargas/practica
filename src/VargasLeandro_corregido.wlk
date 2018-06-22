//Vargas Leandro
class Club{
	var foco //ok, hubiera sido un toque mas correcto perfil
	// acá te tira warning porque no está inicializada, y sino lo queres inicializar
	// lo tenes que poner en un constructor
	var actividades = []
	
	method actividades(){
		return actividades
	}
	
	// si este método agrega una actividad, deberia llamarse agregarActividad
	method actividades(actividad){
		actividades.add(actividad)
	}
	
	method esEvaluado(){
		
	}
}

class ActividadDeportiva{
	var valorDePaseFijo = 100
}

class ActividadSocial{
	var property organizador
	var socios = []
	
	method socios(socio){
		socios.add(socio)
	}
	
	method socios(){
		return socios
	}
}


// No parece haber mucha diferencia entre ActividadDeportiva y Equipo.
// Mas bien la Actividad deportiva tiene un equipo, con un plantel, un capitan, y el valor de pase fijo
class Equipo inherits ActividadDeportiva{
	var plantel = []
	var property capitan
	
	method plantel(){
		return plantel 
	}
	
	method plantel(jugador){
		plantel.add(jugador)
	}
}

class Comun{
	var property aniosEnLaInstitucion = 1
	
	// incompleto
	method esEstrella(){
		return aniosEnLaInstitucion > 20
	}
}

// jugador deberia heredar de Socio, ya que siempre el jugadro es un socio
// y de este manera, herada todo el comportamiento
class Jugador{
	var property cantidadPartidos = 1
	var property valorDelPase = 50
	
	// incompleto
	method esEstrella(){
		return cantidadPartidos > 50 		
	}	
}

// todo esto parecen ser los distintos tipos de clubes
// también venia bien ! le falta completarse nomas !

object tradicional{ 
}


object comunitario{
	method esEstrella(jugador){
		
	}
}

object profesional{
	var property valorPaseFijo = 100
	method esEstrella(jugador){
		return jugador.varDelPase() > valorPaseFijo
	}
}
