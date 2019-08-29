#########################
##   Funciones ECyMA   ##
# Por Hugo I Portilla R #
#########################

# Funcio'n que obtiene el asegurable de una estrategia de un jugador
asegurable <- function(juego, jugador, estrategia){
  #Jugador debe ser numero entero
  juegoResumido <- juego[juego[,jugador]==estrategia,]
  resultado <- juegoResumido[,ncol(juego)/2+jugador]
  resultado <- min(as.numeric(resultado) )
  resultado
  return(resultado)
}

# Funcio'n que obtiene el asegurable de todas las estrategias de un jugador
conjAseg_j <- function(juego, jugador){
  #Todas las estrategias diferentes para el jugador
  estr <- unique(juego[,jugador])
  conj<- c()
  for (i in 1:length(estr)) {
    conj[i] <- asegurable(juego,jugador,estr[i])
  }
  resultado <- as.data.frame(conj)
  resultado$estr <- estr
  return(resultado)
}

# Funcio'n que obtiene el ma'ximo asegurable de un jugador
maxAseg <- function(juego, jugador){
  resultado <- max(as.numeric (as.character(conjAseg_j(juego,jugador)$conj) ) )
  return(resultado)
}

# Funcio'n que obtiene las estrategias conservadoras de un jugador
estraConserv <- function(juego, jugador){
  conjAse <- conjAseg_j(juego,jugador)
  resultado <- conjAse[conjAse$conj==maxAseg(juego,jugador) ,]
  resultado <- resultado$estr
  return(resultado)
}

