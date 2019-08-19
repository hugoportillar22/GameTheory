#########################
###   Juego Ficticio  ###
####   Pseudocodigo  ####
# Por Hugo I Portilla R #
#########################

#Funci'on que itera t veces con el algoritmo de juego ficticio en un juego 2x2
INICIO
  FUNC juegoFicticio(juego:DATAFRAME, X_juego:DATAFRAME, t:ENTERO)
    aux, aux11, aux21, freq_j1, freq_j2 := DATAFRAME
    aux = juegoMixt(juego,X_juego)
    aux11 = respuestasPuras(aux, 1)
    aux21 = respuestasPuras(aux, 2)
    freq_j1 = aux11 JOIN CON X_juego
    freq_j1 = freq_j1$(COLUMNAS:"Todas menos la columna de perfil de estrategias inicial")
    freq_j2 = aux21 JOIN CON X_juego
    freq_j2 = freq_j2$(COLUMNAS:"Todas menos la columna de perfil de estrategias inicial")
    mrp1, mrp2 := CADENA
    mrp1 = freq_j1$(FILAS:"La frecuencia sea la ma'xima para todas las frecuencias del jugador 1")
    mrp1 = mrp1$(COLUMNA:"La estrategia del jugador 1")
    mrp2 = freq_j2$(FILAS:"La frecuencia sea la ma'xima para todas las frecuencias del jugador 2")
    mrp2 = mrp2$(COLUMNA:"La estrategia del jugador 2")
    X_I, X_II, juegoFict := DATAFRAME
    X_I = [i,
    freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiempo i"]/i,
    1-(freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiepo i"]/i)]
    X_II = [i,
    freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"]/i,
    1-(freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"]/i)]
    juegoFict = freq_j1 JOIN CON freq_j2 JOIN CON mrp1 JOIN CON mrp2

    freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiempo i"] =
    freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiempo i"] +1
    freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"] =
    freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"] +1
    freq_j1_aux, freq_j2_aux, X_aux := DATAFRAME
    freq_j1_aux = freq_j1 JOIN CON freq_j1/SUMA(freq_j1)
    freq_j2_aux = freq_j2 JOIN CON freq_j2/SUMA(freq_j2)
    X_aux <- freq_j1_aux UNION CON freq_j2_aux
    X_aux <- X_aux$(COLUMNAS:"Todas menos la columna de perfil de estrategias inicial")
    mrp1 <- mejorRP(aux11)
    mrp2 <- mejorRP(aux21)

    SI (LONGITUD(mrp1)==1 & LONGITUD(mrp2)==1) ENTONCES
      PARA i DESDE 2 HASTA t
        X_I_aux, X_II_aux, juegoFict_aux := DATAFRAME
        X_I_aux = [i,
        freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiempo i"]/i,
        1-(freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiepo i"]/i)]
        X_II_aux = [i,
        freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"]/i,
        1-(freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"]/i)]
        X_I = X_I UNION CON X_I_aux
        X_II = X_I UNION CON X_II_aux
        juegoFict_aux = freq_j1 JOIN CON freq_j2 JOIN CON mrp1 JOIN CON mrp2
        juegoFict = juegoFict UNION CON juegoFict_aux
        aux = juegoMixt(juego,X_juego)
        aux11 = respuestasPuras(aux, 1)
        aux21 = respuestasPuras(aux, 2)
        mrp1 <- mejorRP(aux11)
        mrp2 <- mejorRP(aux21)
        SI (LONGITUD(mrp1)!=1 & LONGITUD(mrp2)!=1) ENTONCES
          BREAK
        FIN SI
        freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiempo i"] =
        freq_j1[VALOR:"Frecuencia de la estrategia del jugador 1 en el tiempo i"] +1
        freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"] =
        freq_j2[VALOR:"Frecuencia de la estrategia del jugador 2 en el tiempo i"] +1
        freq_j1_aux, freq_j2_aux, X_aux := DATAFRAME
        freq_j1_aux = freq_j1 JOIN CON freq_j1/SUMA(freq_j1)
        freq_j2_aux = freq_j2 JOIN CON freq_j2/SUMA(freq_j2)
        X_aux <- freq_j1_aux UNION CON freq_j2_aux
        X_aux <- X_aux$(COLUMNAS:"Todas menos la columna de perfil de estrategias inicial")
      FIN PARA
    FIN SI
    RET resultado
  FIN FUNC
FIN
