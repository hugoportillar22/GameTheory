#########################
###   Pseudoco'digo   ###
#  Algoritmo Algebraico #
# Por Hugo I Portilla R #
#########################


#Funci'on que calcula las estrategias conservadoras de un juego 2x2 
INICIO
  FUNC estrConsAlgebr(juego:DATAFRAME ,jugador:ENTERO)
    juegoResumido : DATAFRAME
    juegoResumido := juego$(COLUMNAS:"pagos para el jugador")
    SI jugador==2 ENTONCES
    	juegoResumido = TRANSPUESTA(juegoResumido)
	FIN SI
    perfilConse[2] : REAL
    perfilConse[1] := (juegoResumido[2,2]-juegoResumido[2,1] )/(juegoResumido[1,1]-juegoResumido[2,1]-juegoResumido[1,2]+juegoResumido[2,2] )
    perfilConse[1] := MIN(MAX(perfilConse,0),1)
    perfilConse[2] := 1 - perfilConse[1]
    estrategiasDeJ : DATAFRAME
    estrategiasDeJ := juego$(COLUMNA:"Estrategias S del jugador")
    resultado : DATAFRAME
    resultado := estrategiasDeJ JOIN CON perfilConse
    RET resultado
  FIN FUNC
FIN


#Funci'on que calcula lel valor de un juego simetrico 2x2
INICIO
  FUNC valorJuegAlgebr(juego:DATAFRAME ,jugador:ENTERO)
    juegoResumido : DATAFRAME
    juegoResumido := juego$(COLUMNAS:"pagos para el jugador")
    SI jugador==2 ENTONCES
    	juegoResumido = TRANSPUESTA(juegoResumido)
	FIN SI
    resultado : REAL
    resultado := (( juegoResumido[2,2]*juegoResumido[1,1] )-( juegoResumido[1,2]*juegoResumido[2,1] ))/(juegoResumido[1,1]-juegoResumido[2,1]-juegoResumido[1,2]+juegoResumido[2,2] )
    RET resultado
  FIN FUNC
FIN




