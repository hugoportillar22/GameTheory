#########################
###    Pseudocodigo   ###
###  Mejor Respuesta  ###
# Por Hugo I Portilla R #
#########################

#Funci'on que determina las respuestas puras de un jugador en un juego en estrategias mixtas
INICIO
  FUNC respuestasPuras(juegoMixt:DATAFRAME, jugador:ENTERO)
    estrJugador[]:= CADENA
    estrJugador = unique(juegoMixt$(COLUMNA:"Estrategias del jugador"))
    resultados, juegoAux := DATAFRAME
    juegoAux$valorEstr[] := REAL
    PARA i DESDE 1 HASTA longitud(estrJugador)
    	juegoAux = juegoMixt$(FILAS:"La columna de estrategias del jugador sea igual a estrJugador[i]")
    	juegoAux$valorEstr[] = juegoAux$(FILA:"Peso de la estrategia del jugador") * juegoAux$(FILA:"Pagos del jugador")
    	resultados[i,] = estrJugador[i] UNION CON suma(juegoAux$valorEstr)
    FIN PARA
    RET resultados
  FIN FUNC
FIN

#Funci'on que determina las mejores respuesta pura de un jugador en un juego en estrategias mixtas
INICIO
  FUNC respuestasPuras(respuestasPuras:DATAFRAME)
    resultado := DATAFRAME
    resultado = respuestasPuras
    resultado = resultado$(FILA:"El pago del jugador sea el ma'ximo de la columna de pagos del jugador")
    resultado = resultado$(COLUMNA:"Estrategias del jugador")
    RET resultados
  FIN FUNC
FIN