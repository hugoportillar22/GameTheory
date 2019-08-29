#########################
###    Punto Silla    ###
# Por Hugo I Portilla R #
#########################

# Funcio'n que obtiene los puntos sillas de un jugador en un juego
puntoSilla_j <- function(juego,jugador){
  estCons <- estraConserv(juego, jugador)
  resultado <- as.data.frame(equilibrioNash(juego) )
  estConsAux <- data.frame(t(t(estCons)))
  names(estConsAux) <- paste0('S',jugador)
  resultado <- inner_join(resultado,estConsAux)
  return(resultado)
}

# Funcio'n que obtiene los puntos sillas del juego
puntoSilla <- function(juego){
  jugadores <- ncol(juego)/2
  resultado <- puntoSilla_j(juego, 1)
  for (i in 2:jugadores) {
    resultado_aux <- puntoSilla_j(juego, i)
    resultado <- inner_join(resultado,resultado_aux)
  }
  return(resultado)
}
