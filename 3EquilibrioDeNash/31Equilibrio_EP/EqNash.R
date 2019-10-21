#########################
##  Funciones EqNash   ##
# Por Hugo I Portilla R #
#########################
library(tidyverse); library(rlang)

# Funcio'n que obtiene la mejor respuesta de un jugador en un juego
mejorRespuesta <- function(juego, jugador, estricta=F){
  separacion <- (ncol(juego)/2)
  phiDeJugador <- colnames(juego)[separacion+jugador]
  estrjugadors <- colnames(juego)[1:separacion]
  estrjugador <- colnames(juego)[jugador]
  estrjugadors <- estrjugadors[which(estrjugadors != estrjugador)]
  resultado <- juego %>% 
    group_by_at(estrjugadors) %>%
    filter((!!sym(phiDeJugador)) == max( (!!sym(phiDeJugador)))  ) 
  return(resultado)
}

# Funcio'n que obtiene el equilibrio de nash de un juego
equilibrioNash <- function(juego){
  jugadores <- (ncol(juego)/2)
  for (i in 1:jugadores) {
    if (i==1) {
      resultado <- mejorRespuesta(juego,1)
    }else{
      resultado <- inner_join(resultado, mejorRespuesta(juego,i) )
    }
  }
  return(resultado)
}