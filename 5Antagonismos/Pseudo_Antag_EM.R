#############################
####    Pseudoco'digo    ####
###   Antagonismo en EM   ###
##  Por Hugo I Portilla R  ##
#############################

# Funcio'n que determina si un juego es antago'nico en estrategias mixtas
INICIO
  FUNC antagonicoEM(juego:DATAFRAME)
    jugadores: REAL
    jugadores:= NCOL(juego)/2
    sumaVi: REAL
    sumaVi:= 0
    PARA i DESDE 1  HASTA LONGITUD(jugadores)
      sumaVi := sumaVi + valorJuegAlgebr(juego, i)
  	FIN PARA
    resultado: BOOLEANO
    resultado: sumaVi == Max(juego)
    RET resultado
  FIN FUNC
FIN
