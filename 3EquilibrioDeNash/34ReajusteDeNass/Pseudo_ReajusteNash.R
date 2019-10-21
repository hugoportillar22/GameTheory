#########################
####  Pseudoc'odigo  ####
##  Reajuste de Nash   ##
# Por Hugo I Portilla R #
#########################

#Funci'on que itera t veces con el algoritmo de reajuste de nash en un juego 2x2

  FUNC reajusteNash(juego:DATAFRAME ,X_juego:DATAFRAME, t:ENTERO )
    auxColsExtras : DATAFRAME
    auxColsExtras := juegoMixt(juego,X_juego)
    auxColsExtras := auxColsExtras$[COLUMNAS: "Columnas 1,2,5,6"]
    X1_ep_compl[], X2_ep_compl[] : REAL
    X1_ep_compl := 1- auxColsExtras$X1
    X2_ep_compl := 1- auxColsExtras$X2
    auxColsExtras := auxColsExtras UNION X1_ep_compl UNION X2_ep_compl
    PARA i desde 1 hasta t
    	X, aux : DATAFRAME
    	X := X_juego$[COLUMNAS:"1 y 1+i"]
    	aux := juegoMixt(juego,X_juego)
    	aux := aux INNER JOIN CON auxColsExtras POR COLUMNAS S1 y S2
    	E1_ep[], E2_ep[], E1_ep_compl[], E2_ep_compl[] : REAL
    	E1_ep :=  aux$PHI1 * aux$X1_ep * aux$X2
    	E2_ep := aux$PHI2 * aux$X2_ep * aux$X1
    	E1_ep_compl := aux$PHI1 * aux$X1_ep_compl * aux$X2
    	E2_ep_compl := aux$PHI2 * aux$X2_ep_compl * aux$X1

    	jugador, E_j1 : REAL
    	aux11 : DATAFRAME
    	jugador := 1
    	E_j1 := suma(aux[,7+jugador])
    	aux11 := respuestasPuras(aux,jugador)
    	aux11[1,2] := suma(aux[,13+jugador])
    	aux11[2,2] := suma(aux[,15+jugador])
    	# Se cambian los nombres de las columnas a "S" y "E_S"
		C_aux[], C[] : REAL
    	C_aux := aux11$E_s - axu11$E_j1
    	C = SI C_aux<0 ENTONCES 0 DE OTRA FORMA C_aux FIN SI
    	aux111 := axu11 UNION CON C_aux UNION CON C
    	aux111 := aux111 INNER JOIN CON X

    	E_j2 : REAL
    	aux21 : DATAFRAME
    	jugador := 2
    	E_j2 := suma(aux[,7+jugador])
    	aux21 := respuestasPuras(aux,jugador)
    	aux21[1,2] := suma(aux[,13+jugador])
    	aux21[2,2] := suma(aux[,15+jugador])
    	# Se cambian los nombres de las columnas a "S" y "E_S"
    	C_aux := aux11$E_s - axu11$E_j2
    	C = SI C_aux<0 ENTONCES 0 DE OTRA FORMA C_aux FIN SI
    	aux211 := aux21 UNION CON C_aux UNION CON C
    	aux211 := aux211 INNER JOIN CON X

    	nueva_X[] : REAL
    	nueva_X := (aux111$ante_X + aux111$C) / (1+ aux111$suma_C)
		aux111 := aux111 UNION CON nueva_X
		nueva_X := (aux211$ante_X + aux211$C) / (1+ aux211$suma_C)
		aux211 := aux211 UNION CON nueva_X
		resultado : DATAFRAME
		resultado := aux211 UNION CON aux111
		X_juego := X_juego INNER JOIN CON resultado
    FIN PARA
    RET resultado
  FIN FUNC
FIN
