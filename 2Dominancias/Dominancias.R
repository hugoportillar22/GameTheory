#########################
# Funciones Dominancias #
# Por Hugo I Portilla R #
#########################
library(tidyverse)

# Funcio'n que reduce al ma'ximo un juego iterando la funcion de dominancias
reduccionPorDominancias <- function(juego, Visual=F){
  i <- 0
  while ((dim(juego)[1]!=1) & !identical(juego,juegoAux) ) {
    i<-i+1
    cat("\n")
    cat("\n")
    print( paste0("#### ITERACION", i, " ####") ) 
    juegoAux <- juego
    juego <- dominancias(juego, visual=Visual)
  }
  return(juego)
}
 

# Funcio'n que obtiene y muestra el juego reducido por sus dominancias
dominancias <- function(juego, visual=F){
  jugadores = ncol(juego)/2
  resultado=juego
  for (i in 1:jugadores) {
    #Esta linea es solo visual
    print( paste0('*** PARA EL JUGADOR:  ' , i) ) 
    reco <- recopilado(resultado,i, visual)
    matrDom <- matrDominancias(reco, visual)
    EsNoDom <- estrNoDominadas(reco, matrDom, visual )
    resultado<- juegoReducido(resultado, i, EsNoDom, visual)
  }
  if (visual==T) {
    cat("\n")
    cat("\n")
    print("EL JUEGO REDUCIDO PARA TODOS LOS JUGADORES ES:")
    print(resultado)
  }
  return(resultado)
}

# Funcio'n que obtiene y muestra el juego reducido por las dominancias de un jugador
dominancias_j <- function(juego, jugador, visual=F){
  if (visual==T) {
    cat("\n")
    cat("\n")
    print( paste("PARA EL JUGADOR ", jugador, " TENEMOS:") )
  }
  reco <- recopilado(juego,jugador, visual)
  matrDom <- matrDominancias(reco, visual)
  EsNoDom <- estrNoDominadas(reco, matrDom, visual )
  resultado<- juegoReducido(juego, jugador, EsNoDom, visual)
  return(resultado)
}

# Funcio'n que reduce un juego con dominancias
juegoReducido <- function(juego, jugador, estrNoDominadas, visual=F){
  juegored <- juego[juego[,jugador] %in% estrNoDominadas,]
  if (visual==T) {
    cat("\n")
    print('El juego reducido para el jugador es: ')
    print(juegored)
  }
  return(juegored)
}

# Funcio'n que obtiene y muestra las estrategias no dominadas de un jugador
estrNoDominadas <- function(recopilado,matrDominancias, visual=F){
  evaluacion <- c()
  for (i in 1:ncol(matrDominancias)) {
    if (sum(matrDominancias[,i])!=0) {
      evaluacion[i] <- F
    } else{
      evaluacion[i] <- T
    }
  }
  estrNoDominadas <- colnames(recopilado)[evaluacion]
  if (visual==T) {
    cat("\n")
    print('Las estrategias no dominadas para el jugador son: ')
    print(estrNoDominadas)
  }
  return(estrNoDominadas)
}

# Funcio'n que obtiene y muestra la matriz de dominancias entre las estrategias de un jugador
matrDominancias <- function(recopilado, visual=F){
  matrizDominancias <- matrix(0, nrow = ncol(recopilado), ncol = ncol(recopilado))
  if (visual==T) {
    cat("\n")
    print('Las dominancias para el jugador son:')
  }
  for (i in 1:length(recopilado)) {
    for (j in 1:length(recopilado)) {
      comparaciones <- as.numeric(recopilado[,i])>=as.numeric(recopilado[,j])
      evaluacion <- prod(comparaciones)
      if (evaluacion == 1 & i!=j & matrizDominancias[j,i]==0 ) {
        matrizDominancias[i,j] <- 1
        if (visual==T) {
          print(paste0(colnames(recopilado)[i]," domina a ", colnames(recopilado)[j]))
          print(paste0(recopilado[,i]," >= ", recopilado[,j]))
        }
      }
    }
  }
  if (visual==T) {
    print(matrizDominancias)
  }
  return(matrizDominancias)
}

# Funcio'n que obtiene la informacion de un juego y la reordena de forma conveniente
recopilado <- function(juego, jugador, visual=F){
  estr <- unique(juego[,jugador])
  separacion <- (ncol(juego)/2)
  phiDeJugador <- colnames(juego)[separacion+jugador]
  estrjugadors <- colnames(juego)[1:separacion]
  estrjugador <- colnames(juego)[jugador]
  estrjugadors <- estrjugadors[which(estrjugadors != estrjugador)]

  for (i in 1:length(estr)) {
    #Resumimos filas
    juegoDeUnaEstr <- juego[which(juego[,jugador] == estr[i]),]
    #Resumimos columnas
    resulDeUnaEstr <- juegoDeUnaEstr[, c(estrjugadors,phiDeJugador)]
    # Renonmbramos la columna phi
    colnames(resulDeUnaEstr)[ncol(resulDeUnaEstr)] <- estr[i]
    if (i==1) {
      recopilado <- resulDeUnaEstr
    }else{
      recopilado <- left_join(recopilado,resulDeUnaEstr, by= c(estrjugadors) )
    }
  }
  if (visual==T) {
    cat("\n")
    print('Recopilando los perfiles de estrategias que conforman los otros jugadores se tiene:')
    print(recopilado)
  }
  #Procedemos a buscar las dominancias, eliminamos los perfiles de estrategias  
  recopilado <- recopilado[, separacion:ncol(recopilado)]
  return(recopilado)
}
