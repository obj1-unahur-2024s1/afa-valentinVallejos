

object afa{
	var  gananciaNeta = 0
	
	var  costoDeEntrada = 10000
	
	const property gastosFijos = 10000000
	
	var  jugadorInvitado 
	var  estadioElegido
	
	method elegirJugadorYEstadio(jugador, estadio){
		jugadorInvitado = jugador
		estadioElegido = estadio
	}
	
	method EntradasVendidas() = ( jugadorInvitado.popularidad() / 100 ) * estadioElegido.capasidadad()
		
	method gananciaNeta() = 
	(self.EntradasVendidas() * costoDeEntrada) - (gastosFijos + jugadorInvitado.viaticos() + estadioElegido.alquiler() )
	
	method realizarPartido(){
		gananciaNeta = self.gananciaNeta()
	}
	
	method costoDeEntrada()= costoDeEntrada
	
	
	method subeLaInflacion(){
		costoDeEntrada = costoDeEntrada - (costoDeEntrada * 0.10)
	} 
}

object messi{
	var  popularidad = 98
	var viaticos = 0
	
	method popularidad() = popularidad
	
	method viaticos() = viaticos
	 
	
	method opinaDelPrecidente(){
		popularidad = popularidad - 10
	}
	
	method viaticos(nueViaticos){
		viaticos = nueViaticos
	}
}


object ronaldo {
	var  popularidad = (messi.popularidad() / 2)
	var viaticos = 1300000
	
	method viaticos() = viaticos
	
	method popularidad() = popularidad
	
	method vaALaAntartida(){
		popularidad = popularidad + 2
	}
}

object mbappe{
	var  popularidad 
	var  viaticos = 120000
	
	method popularidad(edad,goles){
		popularidad = (edad * 2) + goles
	}
	
	method popularidad() = popularidad
	
	method viaticos() = viaticos
	
	method cumpleAnos(){
		popularidad = popularidad + 4
	}
} 

object haland{
	var  popularidad = messi.popularidad() - ronaldo.popularidad()
	var  viaticos = 100000
	
	method viaticos() = viaticos
	
	method popularidad() = popularidad
	
	method ganaFinal(){
		popularidad = popularidad + 10
	}
	
}

object monumental {
	var capasidadad = 0
	var property alquiler = 0
	method capasidadad() = capasidadad
	
	method avanceDeRemodelacion(avance){
		const capasidadTotal = 60000
		capasidadad = (avance / 100) * capasidadTotal
	}
}


object bombonera{
	var  capasidadad = 50000
	var property alquiler = 0
	
	method capasidadad() = capasidadad
}



