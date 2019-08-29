#########################
####  Pseudoc'odigo  ####
###    Punto Silla    ###
# Por Hugo I Portilla R #
#########################

# Funcio'n que obtiene los puntos sillas de un jugador en un juego
INICIO
  FUNC puntoSilla_j(juego:DATAFRAME ,jugador:ENTERO)
    estCons[] : cadena
    resultado, estConsAux : DATAFRAME
    estCons := estraConserv(juego, jugador)
	resultado : equilibrioNash(juego)
	estConsAux := dataframe(estCons)
	resultado := resultado INNER JOIN CON estConsAux
    RET resultado
  FIN FUNC
FIN

# Funcio'n que obtiene los puntos sillas del juego
INICIO
  FUNC puntoSilla(juego:DATAFRAME)
  	jugadores : ENTERO
  	resultado, resultado_aux : DATAFRAME
  	jugadores := ncol(juego)/2
 	resultado := puntoSilla_j(juego, 1)
 	PARA i DESDE 2 HASTA jugadores
		resultado_aux := puntoSilla_j(juego, i)
		resultado := resultado INNER JOIN CON resultado_aux
 	FIN PARA
  FIN FUNC
FIN
