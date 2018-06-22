class Socio{
	var property aniosEnInstitucion = 10
}

class Comun inherits Socio{
	method esEstrella(){
		return aniosEnInstitucion > 20
	}
}

class Jugador inherits Socio{
	var property valorDePase = 20
	var property cantDePartidos = 5
	
	method esEstrella(club){
		if(cantDePartidos > 50){
			return true
		}else{
			return club.perfil().esEstrella(self, club)	
		}
	}
	

}

class Club{
	var property perfil = profesional
	var actividades = []
	var socios = []
	
	method agregarActividad(actividad){
		actividades.add(actividad)
	}
	
	method actividades(){
		return actividades
	}
	
	method sancionar(){
		self.actividades().forEach{ actividad => actividad.sancionar() }
	}
}

class ActividadDeportiva{
	var equipos = []
	var 
	method sancionar(){
		
	}
}

class ActividadSocial{
	method sancionar(){
		
	}
}

object profesional{
	var property valorPaseFijo = 10
	
	method esEstrella(jugador, club){
		return jugador.valorDePase() > valorPaseFijo
	}
}

object comunitario{
	method esEstrella(jugador, club){
		return club.actividades().sum{ actividad => actividad.participa(jugador) } >= 3
	}
}

object tradicional{
	method esEstrella(jugador, club){
		return (club.actividades().count{ actividad => actividad.participa(jugador) } >= 3) or (jugador.valorDePase() > jugador.valorPaseFijo())
	}
}
