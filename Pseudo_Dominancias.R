#########################
###    Pseudocodigo   ###
####   Dominancias   ####
# Por Hugo I Portilla R #
#########################

# Funcio'n que reduce al ma'ximo un juego iterando la funcion de dominancias
INICIO
  FUNC reduccionPorDominancias(juego:DATAFRAME, Visual:BOOLEANO)
    juegoAux:=DATAFRAME
    MIENTRAS ( dim(juego)=1 Y juego!=juegoAux )
    	juegoAux = juego
    	juego = dominancias(juego, visual)
	FIN MIENTRAS
    RET juego
  FIN FUNC
FIN

# Funcio'n que obtiene y muestra el juego reducido por sus dominancias
INICIO
  FUNC dominancias(juego:DATAFRAME, visual:BOOLEANO)
    jugadores:= ENTERO
    resultado:= DATAFRAME
    jugadores = ncol(juego)/2
  	resultado=juego
  	reco, matrDomm EsNoDom, resultado:= DATAFRAME
  	PARA i DESDE 1 HASTA jugadores
  		reco = recopilado(resultado,i, visual)
    	matrDom = matrDominancias(reco, visual)
    	EsNoDom = estrNoDominadas(reco, matrDom, visual )
    	resultado= juegoReducido(resultado, i, EsNoDom, visual)
  	FIN PARA
  	SI visual==VERDADERO ENTONCES
		imprimir("EL JUEGO REDUCIDO PARA TODOS LOS JUGADORES ES:")
		imprimir(resultado)
  	FIN SI
    RET resultado
  FIN FUNC
FIN

# Funcio'n que obtiene y muestra el juego reducido por sus dominancias
INICIO
  FUNC dominancias_j(juego:DATAFRAME, jugador:ENTERO visual:BOOLEANO)
  	reco, matrDomm EsNoDom, resultado:= DATAFRAME
	reco = recopilado(resultado,i, visual)
	matrDom = matrDominancias(reco, visual)
	EsNoDom = estrNoDominadas(reco, matrDom, visual )
	resultado = juegoReducido(resultado, i, EsNoDom, visual)
    RET resultado
  FIN FUNC
FIN

# Funcio'n que reduce un juego con dominancias
INICIO
  FUNC juegoReducido(juego:DATAFRAME, jugador:ENTERO, estrNoDominadas:DATAFRAME, visual:BOOLEANO)
  	resultado:=DATAFRAME
  	resultado = juego JOIN CON estrNoDominadas
  	SI visual == VERDADERO ENTONCES
		imprimir(resultado)
  	FIN SI
    RET resultado
  FIN FUNC
FIN

# Funcio'n que obtiene y muestra las estrategias no dominadas de un jugador
INICIO
  FUNC estrNoDominadas(recopilado:DATAFRAME, matrDominancias:DATAFRAME, visual:BOOLEANO)
    evaluacion[]:= BOOLEANO
    PARA i DESDE 1 HASTA ncol(matrDominancias)
    	SI suma(matrDominancias[,i])!=0  ENTONCES
    		evaluacion[i] = F
		DE OTRA FORMA
			evaluacion[i] = T
    	FIN SI
    	estrNoDominadas = (colnames(recopilado))*evaluacion
		SI visual==VERDADERO ENTONCES
		imprimir('Las estrategias no dominadas para el jugador son: ')
    	imprimir(estrNoDominadas)
  		FIN SI
    FIN PARA
    RET estrNoDominadas
  FIN FUNC
FIN

# Funcio'n que obtiene y muestra la matriz de dominancias entre las estrategias de un jugador
INICIO
  FUNC matrDominancias(recopilado[]:REAL, visual:BOOLEANO)
    matrizDominancias[][]:= BOOLEANO
    SI visual==VERDADERO ENTONCES
		imprimir('Las dominancias para el jugador son:')
	FIN SI
	PARA i DESDE 1 HASTA longitud(recopilado)
		PARA j DESDE 1 HASTA longitud(recopilado)
			comparaciones = (recopilado[,i] >= recopilado[,j]
      		evaluacion = productoCruz(comparaciones)
		FIN PARA
		matrizDominancias[i,j] = 1
		SI visual==VERDADERO ENTONCES
		imprimir(concatenar(colnames(recopilado)[i]," domina a ", colnames(recopilado)[j]))
        imprimir(concatenar(recopilado[,i]," >= ", recopilado[,j]))
		FIN SI
	FIN PARA
    RET matrizDominancias
  FIN FUNC
FIN

# Funcio'n que obtiene la informacion de un juego y la reordena de forma conveniente
INICIO
  FUNC recopilado(juego:DATAFRAME, jugador:ENTERO visual:BOOLEANO)
  	estr:= DATAFRAME
  	separacion := ENTERO
  	phiDeJugador, estrjugadors[] ,estrjugador := CADENA
  	estr <- unique(juego$(COLUMNA:"Estrategias del jugador"))
  	separacion = (ncol(juego)/2)
	phiDeJugador = colnames(juego$(COLUMNA:"Pagos del jugador"))
	estrjugadors = colnames(juego$(COLUMNA:"Estrategias de los otros jugadores"))
	estrjugador = colnames(juego$(COLUMNA:"Estrategia del jugador"))
	juegoDeUnaEstr, resulDeUnaEstr, recopilado := DATAFRAME
	PARA i DESDE 1 HASTA longitud(estr)
		juegoDeUnaEstr = juego$[FILAS: "La estrategia del jugador este en la lista 'estr' "]
		resulDeUnaEstr = juegoDeUnaEstr$[COLUMNAS: "auqellas cuyo nombre este en las listas 'estrjugadors' y 'phiDeJugador' "
		SI i==1 ENTONCES
			recopilado <- resulDeUnaEstr
		DE OTRA FORMA
			recopilado <- recopilado JOIN CON resulDeUnaEstr
		FIN SI
	FIN PARA
	SI visual==VERDADERO ENTONCES
		imprimir('Recopilando los perfiles de estrategias que conforman los otros jugadores se tiene:')
		imprimir(recopilado)
	FIN SI
	recopilado = recopilado$[COLUMNAS: "Solo los pagos de los jugadores "
    RET recopilado
  FIN FUNC
FIN