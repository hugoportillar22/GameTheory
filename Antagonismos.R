#########################
# Funciones antagonismo #
# Por Hugo I Portilla R #
#########################

# Funcio'n que obtiene la m'a'xima ganancia conjunta de un juego
Max <- function(juego){
  jugadores <- (ncol(juego)/2)
  pagosDelJuego <- sapply(juego[,(jugadores+1):ncol(juego)], as.numeric)
  sumaEstr <- rowSums(pagosDelJuego)
  resultado <- max(sumaEstr)
  return(resultado)
}

# Funcio'n que determina si un juego es antago'nico o no
antagonico <- function(juego){
  jugadores <- (ncol(juego)/2)
  sumaVi=0
  for (i in 1:jugadores) {
    sumaVi <- sumaVi + maxAseg(juego, i)
  }
  resultado = sumaVi==Max(juego)
  return(resultado)
}