######################### 
#  Algoritmo Algebraico #
# Por Hugo I Portilla R #
#########################

#Funci'on que calcula las estrategias conservadoras de un juego 2x2
estrConsAlgebr <- function(juego, jugador){
  # Se reduce el juego a una matriz
  a <- matrix(as.numeric(juego[,2+jugador]),2,2, byrow=T)
  # Hay que recordar que el jugador dos debe transponerse
  if (jugador==2) {
    a <- t(a)
  }
  # Se realiza el calculo
  x <-  (a[2,2]-a[2,1] )/(a[1,1]-a[2,1]-a[1,2]+a[2,2] )
  # Se maneja el caso en donde el perfil no este entre 0 y 1
  x <- min(max(x,0),1)
  # Se calcula el complemento
  xFict <- 1-x
  # Se devuelve el vector resultado
  X <- unique(juego[,jugador])
  p <- c(x, xFict)
  resultado <- data.frame(X,p)
  return(resultado)
}

#Funci'on que calcula lel valor de un juego  2x2
valorJuegAlgebr <- function(juego, jugador){
  # Basta calcular para el jugador 1
  # Se guarda una matriz con los valores de interes
  a <- matrix(as.numeric(juego[,2+jugador]),2,2, byrow=T)
  # Hay que recordar que el jugador dos debe transponerse
  if (jugador==2) {
    a <- t(a)
  }
  # Se calcula y se devuelve
  v <-  (( a[2,2]*a[1,1] )-( a[1,2]*a[2,1] ))/(a[1,1]-a[2,1]-a[1,2]+a[2,2] )
  return(v)
}

