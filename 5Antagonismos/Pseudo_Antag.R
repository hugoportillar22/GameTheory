#############################
# Pseudoco'digo antagonismo #
##  Por Hugo I Portilla R  ##
#############################

# Funcio'n que obtiene la m'a'xima ganancia conjunta de un juego
INICIO
  FUNC Max(juego:DATAFRAME)
    pagosDelJuego : DATAFRAME
    pagosDelJuego := juego$(COLUMNAS:"Pagos para todos los jugadores")
    sumaEstr[] : REAL
    sumaEstr := pagosDelJuego$(COLUMNA NUEVA:"Suma de los elementos en la fila")
    resultado: REAL
    resultado := MAX(sumaEstr)
    RET resultado
  FIN FUNC
FIN


# Funcio'n que determina si un juego es antago'nico o no
INICIO
  FUNC antagonico(juego:DATAFRAME)
    jugadores: REAL
    jugadores:= NCOL(juego)/2
    sumaVi: REAL
    sumaVi:= 0
    PARA i DESDE 1  HASTA LONGITUD(jugadores)
      sumaVi := sumaVi + maxAseg(juego, i)
  	FIN PARA
    resultado: BOOLEANO
    resultado: sumaVi = Max(juego)
    RET resultado
  FIN FUNC
FIN