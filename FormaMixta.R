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
