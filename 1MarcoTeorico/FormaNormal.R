############################
# Visualizaci'on de juegos #
##  Por Hugo I Portilla R ##
############################

# Funci'on que imprime la representacion estrat'egica de un juego
repEstr <- function(juego){
  registros <- data.frame(matrix(NA, nrow = nrow(juego) , ncol = 3))
  names(registros) <- c('Forma normal', " ", " ")
  for (i in 1:nrow(juego)) {
    sigma <- "phi("
    phi <- "(" 
    div_df <- ncol(juego)/2
    for (j in 1:div_df) {
      if (j != div_df) {
        sigma <- paste0(sigma, juego[i,j], "," )
        phi <- paste0(phi, juego[i,div_df+j], "," )
      }else{
        sigma <- paste0(sigma, juego[i,j] )
        phi <- paste0(phi, juego[i,div_df+j] )
      }
      j <- j+1
    }
    registros[i,1] <- (paste0(sigma, ")"))
    registros[i,2] <- (" = ")
    registros[i,3] <- (paste0(phi, ")" ))
    i <- i+1
  }
  registros
}


# Funci'on que imprime la representacion matricial de un juego
repMatr <- function(juego){
  if (ncol(juego) != 4 ) {
    print("Este juego no admite forma matricial, ya que no es de 2 jugadores.")
    repEstr(juego)
  }else{
    numEst_j1 <- length(unique(juego$S1))+1
    numEst_j2 <- length(unique(juego$S2))+1
    matricial <- data.frame(matrix(NA, nrow = numEst_j1 , ncol = numEst_j2 ) )
    matricial[1,1] <- "J1\\J2"
    for (i in 2:numEst_j1) {
      matricial[i,1]<- unique(juego$S1)[i-1]
    }
    for (i in 2:numEst_j2) {
      matricial[1,i]<- unique(juego$S2)[i-1]
    }
    for (i in 2:numEst_j1) {
      for (j in 2:numEst_j2) {
        phi1 <- juego[(juego$S1 == matricial[i,1]) & (juego$S2 == matricial[1,j] ), ]$PHI1
        phi2 <- juego[(juego$S1 == matricial[i,1]) & (juego$S2 == matricial[1,j] ), ]$PHI2
        matricial[i,j] <- paste0("(", phi1,",",phi2 , ")" )
      }
    }
    matricial
  }
}
