#########################
##  Pseudocodigo EqNash ##
# Por Hugo I Portilla R #
#########################


# Funcio'n que obtiene la mejor respuesta de un jugador
INICIO
  FUNC mejorRespuesta(juego:DATAFRAME ,jugador:ENTERO)
    phiDeJugador := CADENA
    phiDeJugador = juego$(COLUMNA:"phi del jugador")
    estrjugadors := DATAFRAME
    estrjugadors := juego$(COLUMNAS:"estrategias de los otros jugadores")
    resultado := DATAFRAME
    resultado := estrjugadors$(FILAS:"m'aximo valor de phiDeJugador cuando estrjugadors son iguales")
    RET resultado
  FIN FUNC
FIN


# Funcio'n que obtiene el equilibrio de Nash de un juego
INICIO
  FUNC equilibrioNash(juego:DATAFRAME)
    jugadores := ENTERO
    jugadores = NumeroDeColumnas(juego) / 2
    resultado := DATAFRAME
    PARA i DESDE 1  HASTA jugadores
      SI i==1 ENTONCES
        resultado = mejorRespuesta(juego,1)
      FIN SI
      EN OTRO CASO
        resultado = resultado JOIN CON mejorRespuesta(juego,i)
      FIN DEL EN OTRO CASO
      conj[i] := asegurable(juego,jugador,estr[i])
    FIN PARA
    RET resultado
  FIN FUNC
FIN




