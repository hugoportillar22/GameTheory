#########################
##  Reajuste de Nash   ##
# Por Hugo I Portilla R #
#########################

#Funci'on que itera t veces con el algoritmo de reajuste de nash en un juego 2x2
reajusteNash <- function(juego, X_juego, t){
  # Se guardan los perfiles en estrategias puras originales
  auxColsExtras <- juegoMixt(juego,X_juego)[,c(1,2,5,6)] %>%
                  mutate(X1_ep_compl = 1- as.numeric(X1) , X2_ep_compl = 1-as.numeric(X2)
                         ,X1= as.numeric(X1)
                         ,X2 = as.numeric(X2))
  colnames(auxColsExtras) <- c('S1', 'S2', 'X1_ep', 'X2_ep', 'X1_ep_compl', 'X2_ep_compl' )
  # Se comienza a iterar t veces el proceso
  for (i in 1:t) {
    # Se obtienen todos los datos calculados que se usara'n
    X <- X_juego[,c(1,1+i)]
    colnames(X) <- c('X',paste0('t',toString(i)) )
    aux <- juegoMixt(juego,X)
    aux <- inner_join(aux,auxColsExtras, by=c('S1'='S1','S2'='S2'))
    aux <- aux %>% mutate(E1_ep = as.numeric(PHI1)*X1_ep*as.numeric(X2),
                          E2_ep = as.numeric(PHI2)*X2_ep*as.numeric(X1),
                          E1_ep_compl = as.numeric(PHI1)*X1_ep_compl*as.numeric(X2),
                          E2_ep_compl = as.numeric(PHI2)*X2_ep_compl*as.numeric(X1) )

    # Se resuelve para el jugador 1, obtieniendo los componentes del cauclo de su X
    jugador <- 1
    E_j1 <- sum(aux[,7+jugador])
    aux11 <- respuestasPuras(aux, jugador)
    aux11[1,2] <- sum(aux[,13+jugador])
    aux11[2,2] <- sum(aux[,15+jugador])
    colnames(aux11) <- c('S','E_S')
    aux111 <- aux11 %>% mutate(C_aux=as.numeric(E_S)-E_j1 ) %>% 
                        mutate(C=ifelse(C_aux<0,0,C_aux) )
    suma_C_1 <- sum(aux111$C)
    aux111 <- aux111 %>% mutate(suma_C=suma_C_1 )
    colnames(X) <- c('X','ante_X' )
    aux111 <- inner_join(aux111, X, by=c('S'='X'))
    aux111$ante_X <- as.numeric( aux111$ante_X )
    
    #Ahora an'alogo para el jugador 2
    jugador <- 2
    E_j2 <- sum(aux[,7+jugador])
    aux21 <- respuestasPuras(aux, jugador)
    aux21[1,2] <- sum(aux[,13+jugador])
    aux21[2,2] <- sum(aux[,15+jugador])
    colnames(aux21) <- c('S','E_S')
    aux211 <- aux21 %>% mutate(C_aux=as.numeric(E_S)-E_j2 ) %>% 
                        mutate(C=ifelse(C_aux<0,0,C_aux) )
    suma_C_2 <- sum(aux211$C)
    aux211 <- aux211 %>% mutate(suma_C=suma_C_2 )
    colnames(X) <- c('X','ante_X' )
    aux211 <- inner_join(aux211, X, by=c('S'='X'))
    aux211$ante_X <- as.numeric( aux211$ante_X )
    
    # Finalemnte se obtiene el perfil de estrategias nuevo
    aux211 <- aux211 %>% mutate(nueva_X= (ante_X + C) / (1+ suma_C) )
    aux111 <- aux111 %>% mutate(nueva_X= (ante_X + C) / (1+ suma_C) )
    resultado <- rbind(aux211,aux111)[,c(1,7)]
    colnames(resultado) <- c('X',paste0('t',toString(i)) )
  
    # Se guarda el nuevo perfil en el data frame de su comportamiento histo'rico
    X_juego <- inner_join(X_juego,resultado)
    
  }
  return(X_juego)
}
