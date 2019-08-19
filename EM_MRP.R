#########################
##  Estrategias Mixtas ##
# Por Hugo I Portilla R #
#########################

#Funci'on que crea un juego en estrategias mixtas
#Parte de un juego ene strategias puras y un perfil de estrategias
juegoMixt <- function(juego, X_juego){
  # Se hace intersecci'on entre el juego original y el perfil de estrategias
  resultado <- inner_join(juego,X_juego, by=c("S1" = "X") )
  resultado <- inner_join(resultado,X_juego, by=c("S2" = "X") )
  names(resultado) <- c('S1', 'S2', 'PHI1', 'PHI2', 'X1', 'X2')
  # Se obtienen los campos calculados relacionados con el valor esperado de cada perfil
  resultado$Xmarg <- as.numeric(resultado$X1) * as.numeric(resultado$X2)
  resultado$E_1 <- resultado$Xmarg * as.numeric(resultado$PHI1)
  resultado$E_2 <- resultado$Xmarg * as.numeric(resultado$PHI2)
  
  return(resultado)
}


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

