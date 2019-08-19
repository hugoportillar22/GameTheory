#########################
##  Pseudoco'digo ECyMA ##
# Por Hugo I Portilla R #
#########################


# Funcio'n que obtiene el asegurable de una estrategia de un jugador
INICIO
  FUNC asegurable(juego:DATAFRAME ,jugador:ENTERO, estrategia:CADENA)
    juegoResumido : DATAFRAME
    juegoResumido := juego$(FILAS:"jugador ELIGE estrategia")
    resultado[] : REAL
    resultado := juegoResumido$(COLUMNA:"pagos para jugador")
    resultado := MIN(resultado)
    RET resultado
  FIN FUNC
FIN


# Funcio'n que obtiene el asegurable de todas las estrategias de un jugador
INICIO
  FUNC conjAseg(juego:DATAFRAME ,jugador:ENTERO)
    estr[] : CADENA
    # al ser un CONJUNTO sus elementos son unicos, es decir no hay elementos repetidos.
    estr := CONJUNTO( juego$(COLUMNA:"estrategias del jugador") )
    conj[] : REAL
    PARA i DESDE 1  HASTA LONGITUD(estr)
      conj[i] := asegurable(juego,jugador,estr[i])
    FIN PARA
    res : DATAFRAME
    res$[COLUMNA == 1] := conj[]
    res$[COLUMNA == 2] := estr[]  
    RET res
  FIN FUNC
FIN

# Funcio'n que obtiene el ma'ximo asegurable de un jugador
INICIO
  FUNC maxAseg(juego:DATAFRAME ,jugador:ENTERO)
    resultado[] : REAL
    resultado := conjAseg(juego,jugador)$[COLUMNA:"de asegurables"]
    resultado := MAX(resultado)
    RET resultado
  FIN FUNC
FIN

# Funcio'n que obtiene las estrategias conservadoras de un jugador
INICIO
  FUNC maxAseg(juego:DATAFRAME ,jugador:ENTERO)
    conjAseg : DATAFRAME 
    conjAseg := conjAseg(juego,jugador)
    maxAseg : REAL 
    maxAseg := maxAseg(juego,jugador)  
    resultado[] : CADENA
    resultado := conjAseg$[FILAS:"pagos sean igual a maxAseg"]
    resultado := resultado$[COLUMNAS:"de estrategias"]
    RET resultado
  FIN FUNC
FIN
