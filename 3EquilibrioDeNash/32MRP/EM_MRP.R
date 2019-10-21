#########################
##           MRP       ##
# Por Hugo I Portilla R #
#########################

#Funci'on que determina las respuestas puras de un jugador en un juego en estrategias mixtas
respuestasPuras <- function(juegoMixt, jugador){
  # Se obtienen las estrategias del jugador
  estrJugador<- unique(juegoMixt[,jugador])
  resultados <- data.frame(matrix(NA, nrow = length(estrJugador), ncol = 2), stringsAsFactors=FALSE)
  # Para cada estrategia se calcula el pago esperado
  for (i in 1:length(estrJugador)) {
    juegoAux <- juegoMixt[juegoMixt[,jugador]==estrJugador[i],1:6]
    juegoAux$valorEstr <- as.numeric(juegoAux[,2+jugador]) * as.numeric(juegoAux[,ncol(juegoAux)-jugador+1])
    resultados[i,] <- c(estrJugador[i], sum(juegoAux$valorEstr) )
  }
  return(resultados)
}


#Funci'on que determina las mejores respuesta pura de un jugador en un juego en estrategias mixtas
mejorRP<- function(respuestasPuras){
  resultado <- respuestasPuras
  resultado <- resultado[resultado[,2]==max(as.numeric(resultado[,2])),1]
  return(resultado)
}

