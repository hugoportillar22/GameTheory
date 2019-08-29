#########################
##  Juego Ficticio   ##
# Por Hugo I Portilla R #
#########################

#Funci'on que itera t veces con el algoritmo de juego ficticio en un juego 2x2
juegoFicticio <- function(juego, X_juego, t){
  i <- 1
  # Se obtiene el juego mixto
  aux <- juegoMixt(juego,X_juego)
  # Se obtiene las respuestas puras de cada jugador
  aux11 <- respuestasPuras(aux, 1)
  aux21 <- respuestasPuras(aux, 2)
  # Se obtiene la primer frecuencia dle jugador 1
  freq_j1 <- inner_join(aux11, X_juego, by=c('X1'='X') )
  freq_j1 <- freq_j1[,-2]
  freq_j1[,2] <- as.numeric(freq_j1[,2])
  # Se obtiene la primer frecuencia del jugador 2
  freq_j2 <- inner_join(aux21, X_juego, by=c('X1'='X') )
  freq_j2 <- freq_j2[,-2]
  freq_j2[,2] <- as.numeric(freq_j2[,2])
  # Se obtiene la mejor respuesta pura de cada jugador
  # Para la primer iteracion hay que recordar que fue al azar

  mrp1 <- freq_j1[freq_j1[,2]==max(freq_j1[,2]),1]
  mrp2 <- freq_j2[freq_j2[,2]==max(freq_j2[,2]),1]
  # Se guardan los pesos en un vector
  X_I <- data.frame(i, round( freq_j1[1,2]/sum(freq_j1[,2]) , 3) , round( freq_j1[2,2]/sum(freq_j1[,2]) , 3) )
  names(X_I)<-c("t",aux11[,1])
  X_II <- data.frame(i, round( freq_j2[1,2]/sum(freq_j2[,2]) , 3) , round( freq_j2[2,2]/sum(freq_j2[,2]) , 3) )
  names(X_II)<-c("t",aux21[,1])
  # Se imprime el juego ficticio
  juegoFict<-data.frame(i, mrp1, paste0('(',X_I[i,2],',',X_I[i,3],')') ,
                        mrp2, paste0('(',X_II[i,2],',',X_II[i,3],')')  )
  names(juegoFict)<-c("PeriodoT","I", 'X_I(t)',"II", 'X_II(t)')
  # Se recalcula los valores de la frecuencia, obteniendo la sig mrp
  # SI SE TIENE MAS DE UNA MEJOR RESPUESTA PURA SE TOMA LA PRIMERA
  freq_j1[freq_j1[,1]==mejorRP(aux11)[1] ,2] <- freq_j1[freq_j1[,1]==mejorRP(aux11) ,2]+1 
  freq_j2[freq_j2[,1]==mejorRP(aux21)[1] ,2] <- freq_j2[freq_j2[,1]==mejorRP(aux21) ,2]+1 
  # se prepara el vector X para las iteraciones poteriores
  freq_j1_aux <- freq_j1 %>% mutate(P=(p/sum(p)))
  freq_j2_aux <- freq_j2 %>% mutate(P=(p/sum(p)))
  X_aux <- rbind(freq_j1_aux , freq_j2_aux  )
  X_aux <- X_aux[,-2]
  names(X_aux)<-c('X','p')
  # Se obtiene la mejor respuesta pura de cada jugador
  mrp1 <- mejorRP(aux11)
  mrp2 <- mejorRP(aux21)
  
  if (length(mrp1)==1 & length(mrp2)==1 ) {
    ### Esto es solo para probar
    #i <- 2
    #t<-18
    # Comienzan las iteraciones para las siguientes repeticiones
    for (i in 2:t) {
      # Se guardan los pesos en un vector
      X_I_aux <- data.frame(i, round( freq_j1[1,2]/sum(freq_j1[,2]) ,3) , round( freq_j1[2,2]/sum(freq_j1[,2]) ,3) )
      names(X_I_aux)<-colnames(X_I)
      X_I <- rbind(X_I , X_I_aux  )
      
      X_II_aux <- data.frame(i, round( freq_j2[1,2]/sum(freq_j2[,2]) ,3) , round( freq_j2[2,2]/sum(freq_j2[,2]) ,3) )
      names(X_II_aux)<-colnames(X_II)
      X_II <- rbind(X_II , X_II_aux  ) 
      # Se imprime el juego ficticio
      juegoFict_aux<-data.frame(i, mrp1, paste0('(',X_I[i,2],',',X_I[i,3],')') ,
                                mrp2, paste0('(',X_II[i,2],',',X_II[i,3],')')  )
      names(juegoFict_aux)<-c("PeriodoT","I", 'X_I(t)',"II", 'X_II(t)')
      juegoFict <- rbind(juegoFict , juegoFict_aux  )
      # Se obtiene el juego mixto
      aux <- juegoMixt(juego,X_aux) 
      # Se obtiene las respuestas puras de cada jugador
      aux11 <- respuestasPuras(aux, 1)
      aux21 <- respuestasPuras(aux, 2)
      # Se obtiene la mejor respuesta pura de cada jugador
      mrp1 <- mejorRP(aux11)
      mrp2 <- mejorRP(aux21)
      
      if (length(mrp1)!=1 & length(mrp2)!=1 ) {
        #i<-t+1
        break
      }
      
      # Se recalculan los valores de la frecuencia, obteniendo la sig mrp
      freq_j1[freq_j1[,1]==mejorRP(aux11)[1] ,2] <- freq_j1[freq_j1[,1]==mejorRP(aux11) ,2]+1 
      freq_j2[freq_j2[,1]==mejorRP(aux21)[1] ,2] <- freq_j2[freq_j2[,1]==mejorRP(aux21) ,2]+1 
      # Se prepara el vector X para las iteraciones poteriores
      freq_j1_aux <- freq_j1 %>% mutate(P=(p/sum(p)))
      freq_j2_aux <- freq_j2 %>% mutate(P=(p/sum(p)))
      X_aux <- rbind(freq_j1_aux , freq_j2_aux  )
      X_aux <- X_aux[,-2]
      names(X_aux)<-c('X','p')
      
    }
  }
  return(list(juegoFict,X_I,X_II))
}
