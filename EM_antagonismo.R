#########################
##  Antagonismo en EM  ##
# Por Hugo I Portilla R #
#########################

# Funcio'n que determina si un juego es antago'nico en estrategias mixtas
antagonicoEM <- function(juego){
  jugadores <- (ncol(juego)/2)
  sumaVi=0
  for (i in 1:jugadores) {
    sumaVi <- sumaVi + valorJuegAlgebr(juego, i)
  }
  resultado = sumaVi==Max(juego)
  return(resultado)
}
