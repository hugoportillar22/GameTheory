## Algunos juegos

# Me faltaron los juegos de disparejo y prisionero



# Juego 1 de la tarea
#(x1 <- array(c(2,4,3,5,5,7,4,1,-3,2,9,-9), c(2,3,2)))
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B', 'C')
filas <- length(pe_j1)*length(pe_j2)
juego_t1 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_t1) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_t1[1,] <- c('a', 'A', 2, 4)
juego_t1[2,] <- c('a', 'B', 3, -3)
juego_t1[3,] <- c('a', 'C', 5, 9)
juego_t1[4,] <- c('b', 'A', 4, 1)
juego_t1[5,] <- c('b', 'B', 5, 2)
juego_t1[6,] <- c('b', 'C', 7, -9)
juego_t1
repEstr(juego_t1)
repMatr(juego_t1)

# Juego 2 de la tarea
# (x2 <- array(c(7,-9,5,5,9,-2,-2,4), c(2,2,2)))
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
juego_t2 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_t2) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_t2[1,] <- c('a', 'A', 7, 9)
juego_t2[2,] <- c('a', 'B', 5, -2)
juego_t2[3,] <- c('b', 'A', -9, -2)
juego_t2[4,] <- c('b', 'B', 5, 4)
juego_t2
repEstr(juego_t2)
repMatr(juego_t2)


# VARIACION Juego 2 de la tarea
# G como j1 y H como j2
j <- 2
pe_j1 <- c('Vetar', 'No Vetar')
pe_j2 <- c('Competir', 'No Competir')
filas <- length(pe_j1)*length(pe_j2)
empresasTec <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(empresasTec) <- c('S1', 'S2', 'PHI1', 'PHI2')
empresasTec[1,] <- c('Vetar', 'Competir', -2, -2)
empresasTec[2,] <- c('Vetar', 'No Competir', 6, -2)
empresasTec[3,] <- c('No Vetar', 'Competir', 4, 4)
empresasTec[4,] <- c('No Vetar', 'No Competir', 5, 3)
empresasTec
repEstr(empresasTec)
repMatr(empresasTec)

mejorRespuesta(empresasTec, 1)
mejorRespuesta(empresasTec, 2)
equilibrioNash(empresasTec)

# Juego 3 de la tarea
# (x3 <- array(c(4,5,9,3,3,-7,2,2), c(2,2,2)))
# Cuidado con estr conservadora !!!
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
juego_t3 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_t3) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_t3[1,] <- c('a', 'A', 4, 3)
juego_t3[2,] <- c('a', 'B', 9, 2)
juego_t3[3,] <- c('b', 'A', 5, -7)
juego_t3[4,] <- c('b', 'B', 3, 2)
juego_t3
repEstr(juego_t3)
repMatr(juego_t3)


# Juego 4 de la tarea
# (x4 <- array(c(5,4,-1,3,3,2,3,11,-3,5,2,3,5,2,5,5,2,12,-9,9,9,3,1,1,2,2,8,2,3,3,7,4,3,-3,9,9,5,2,2,4), c(4,5,2)))
#Nuevamene fallÃ³ estr conserv
j <- 2
pe_j1 <- c('a', 'b', 'c', 'd')
pe_j2 <- c('A', 'B', 'C', 'D', 'E')
filas <- length(pe_j1)*length(pe_j2)
juego_t4 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_t4) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_t4[1,] <- c('a', 'A', 5, 9)
juego_t4[2,] <- c('a', 'B', 3, 2)
juego_t4[3,] <- c('a', 'C', -3, 3)
juego_t4[4,] <- c('a', 'D', 5, 3)
juego_t4[5,] <- c('a', 'E', 2, 5)
juego_t4[6,] <- c('b', 'A', 4, 3)
juego_t4[7,] <- c('b', 'B', 2, 2)
juego_t4[8,] <- c('b', 'C', 5, 3)
juego_t4[9,] <- c('b', 'D', 2, -3)
juego_t4[10,] <- c('b', 'E', 12, 2)
juego_t4[11,] <- c('c', 'A', -1, 1)
juego_t4[12,] <- c('c', 'B', 3, 8)
juego_t4[13,] <- c('c', 'C', 2, 7)
juego_t4[14,] <- c('c', 'D', 5, 9)
juego_t4[15,] <- c('c', 'E', -9, 2)
juego_t4[16,] <- c('d', 'A', 3, 1)
juego_t4[17,] <- c('d', 'B', 11, 2)
juego_t4[18,] <- c('d', 'C', 3, 4)
juego_t4[19,] <- c('d', 'D', 5, 9)
juego_t4[20,] <- c('d', 'E', 9, 4)
juego_t4
repEstr(juego_t4)
repMatr(juego_t4)


# Juego 5 de la tarea
j <- 3
pe_j <- c('arr', 'aba')
filas <- length(pe_j)^3
juego_t5 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_t5) <- c('S1', 'S2', 'S3', 'PHI1', 'PHI2', 'PHI3')
juego_t5[1,] <- c('arr', 'arr', 'arr', 0, 0, 0)
juego_t5[2,] <- c('arr', 'arr', 'aba', 0, 0, 1)
juego_t5[3,] <- c('arr', 'aba', 'arr', 0, 1, 0)
juego_t5[4,] <- c('arr', 'aba', 'aba', 1, 0, 0)
juego_t5[5,] <- c('aba', 'arr', 'arr', 1, 0, 0)
juego_t5[6,] <- c('aba', 'arr', 'aba', 0, 1, 0)
juego_t5[7,] <- c('aba', 'aba', 'arr', 0, 0, 1)
juego_t5[8,] <- c('aba', 'aba', 'aba', 0, 0, 0)
juego_t5



# Juego de las dominancias 2.6
j <- 3
pe_A <- c('a1', 'a2')
pe_B <- c('b1', 'b2')
pe_C <- c('c1', 'c2')
filas <- length(pe_A) * length(pe_B) * length(pe_C)
falsasOpciones <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(falsasOpciones) <- c('S1', 'S2', 'S3', 'PHI1', 'PHI2', 'PHI3')
falsasOpciones[1,] <- c('a1', 'b1', 'c1', 1,2,-1 )
falsasOpciones[2,] <- c('a1', 'b1', 'c2', 5,6,0 )
falsasOpciones[3,] <- c('a1', 'b2', 'c1', 3,4,0 )
falsasOpciones[4,] <- c('a1', 'b2', 'c2', 7,6,1 )
falsasOpciones[5,] <- c('a2', 'b1', 'c1', 2,4,0 )
falsasOpciones[6,] <- c('a2', 'b1', 'c2', 10,8,2 )
falsasOpciones[7,] <- c('a2', 'b2', 'c1', 6,8,-2 )
falsasOpciones[8,] <- c('a2', 'b2', 'c2', 14,8,-1 )
falsasOpciones

repEstr(falsasOpciones)
repMatr(falsasOpciones)


# Dilema del prisionero
j <- 2
pe_j <- c('conf', 'NOconf')
filas <- length(pe_j)^2
prisionero <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(prisionero) <- c('S1', 'S2', 'PHI1', 'PHI2')
prisionero[1,] <- c('conf', 'NOconf', 0, -20)
prisionero[2,] <- c('conf', 'conf', -10, -10)
prisionero[3,] <- c('NOconf', 'NOconf', -2, -2)
prisionero[4,] <- c('NOconf', 'conf', -20, 0)





##############
 #  TESTER  #
#############
#### PAra la lucha entre las empresas tecnologicas ####
repEstr(empresasTec)
repMatr(empresasTec)

asegurable(empresasTec,1,"Vetar")
asegurable(empresasTec,1,"No Vetar")
asegurable(empresasTec,2,"Competir")
asegurable(empresasTec,2,"No Competir")

conjAseg_j(empresasTec,1)
conjAseg_j(empresasTec,2)

maxAseg(empresasTec,1)
maxAseg(empresasTec,2)

estraConserv(empresasTec,1)
estraConserv(empresasTec,2)


#### del 1 al 3 ####
ensayo <- juego_t4

repEstr(ensayo)
repMatr(ensayo)

asegurable(ensayo,1,"a")
asegurable(ensayo,1,"b")
asegurable(ensayo,2,"A")
asegurable(ensayo,2,"B")
asegurable(ensayo,2,"C")

conjAseg_j(ensayo,1)
conjAseg_j(ensayo,2)

maxAseg(ensayo,1)
maxAseg(ensayo,2)

estraConserv(ensayo,1)
estraConserv(ensayo,2)


#### Tester juego 4 ####
asegurable(ensayo,1,"a")
asegurable(ensayo,1,"b")
asegurable(ensayo,1,"c")
asegurable(ensayo,1,"d")
asegurable(ensayo,2,"A")
asegurable(ensayo,2,"B")
asegurable(ensayo,2,"C")
asegurable(ensayo,2,"D")
asegurable(ensayo,2,"E")

#### Tester juego 5 ####
ensayo <- juego_t5

repEstr(ensayo)
repMatr(ensayo)

asegurable(ensayo,1,"arr")
asegurable(ensayo,1,"aba")
asegurable(ensayo,2,"arr")
asegurable(ensayo,2,"aba")
asegurable(ensayo,3,"arr")
asegurable(ensayo,3,"aba")

conjAseg_j(ensayo,1)
conjAseg_j(ensayo,2)
conjAseg_j(ensayo,3)

maxAseg(ensayo,1)
maxAseg(ensayo,2)
maxAseg(ensayo,3)

estraConserv(ensayo,1)
estraConserv(ensayo,2)
estraConserv(ensayo,3)



###############################
# Juego de las dominancias 2.6
##############################
j <- 3
pe_A <- c('a1', 'a2')
pe_B <- c('b1', 'b2')
pe_C <- c('c1', 'c2')
filas <- length(pe_A) * length(pe_B) * length(pe_C)
falsasOpciones <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(falsasOpciones) <- c('S1', 'S2', 'S3', 'PHI1', 'PHI2', 'PHI3')
falsasOpciones[1,] <- c('a1', 'b1', 'c1', 1,4,-1 )
falsasOpciones[2,] <- c('a1', 'b1', 'c2', 5,6,0 )
falsasOpciones[3,] <- c('a1', 'b2', 'c1', 3,2,0 )
falsasOpciones[4,] <- c('a1', 'b2', 'c2', 7,6,1 )
falsasOpciones[5,] <- c('a2', 'b1', 'c1', 2,8,0 )
falsasOpciones[6,] <- c('a2', 'b1', 'c2', 10,8,2 )
falsasOpciones[7,] <- c('a2', 'b2', 'c1', 6,4,-2 )
falsasOpciones[8,] <- c('a2', 'b2', 'c2', 14,8,-1 )
falsasOpciones

repEstr(falsasOpciones)

subfalsasOpciones_1 <- data.frame(matrix(NA, nrow = 4, ncol = 5), stringsAsFactors=FALSE)
names(subfalsasOpciones_1) <- c('p1', 'p2', 'p3', 'p4', 'p5')

subfalsasOpciones_1[,1] <- rep(-1,4)
subfalsasOpciones_1[,2] <- rep(0,4)
subfalsasOpciones_1[,3] <- rep(1,4)
subfalsasOpciones_1[,4] <- rep(2,4)
subfalsasOpciones_1[,5] <- rep(2,4)

reco <- recopilado(falsasOpciones,3,T)
matrDom <- matrDominancias(reco, T)
EsNoDom <- estrNoDominadas(reco, matrDom, T )
resultado<- juegoReducido(falsasOpciones, 3, EsNoDom)
dominancias_j(falsasOpciones,2)

repEstr(juego_t1)

repMatr(juego_t3)
a <- dominancias(falsasOpciones, T)
a <- dominancias(falsasOpciones, F)
a
#PAra sacar equilibrios con dominancias, podando y podando.
b <- dominancias(a[,c(2,4)], T)
a <- dominancias_j(a,2, T)


###############################
# Fin de dominancias #####
##############################

#Antagonico del libro pdf43
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B', 'C')
filas <- length(pe_j1)*length(pe_j2)
juego_p43 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_p43) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_p43[1,] <- c('a', 'A', 3, 6)
juego_p43[2,] <- c('a', 'B', 5, 2)
juego_p43[3,] <- c('a', 'C', 4, 1)
juego_p43[4,] <- c('a', 'D', 7, 1)
juego_p43[5,] <- c('b', 'A', 1, 7)
juego_p43[6,] <- c('b', 'B', 1, 3)
juego_p43[7,] <- c('b', 'C', 5, 2)
juego_p43[8,] <- c('b', 'D', 4, 2)
juego_p43[9,] <- c('c', 'A', 0, 8)
juego_p43[10,] <- c('c', 'B', 4, 1)
juego_p43[11,] <- c('c', 'C', 5, -1)
juego_p43[12,] <- c('c', 'D', 1, -1)
juego_p43
repEstr(juego_p43)
repMatr(juego_p43)


# Antagonico de guerra
j <- 2
pe_j1 <- c('Norte', 'Sur')
pe_j2 <- c('Norte', 'Sur')
filas <- length(pe_j1)*length(pe_j2)
guerra <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(guerra) <- c('S1', 'S2', 'PHI1', 'PHI2')
guerra[1,] <- c('Norte', 'Norte', 2, -2)
guerra[2,] <- c('Norte', 'Sur', 2, -2)
guerra[3,] <- c('Sur', 'Norte', 1, -1)
guerra[4,] <- c('Sur', 'Sur', 3, -3)

guerra
repEstr(guerra)
repMatr(guerra)

#### Otro más de dominancias
repMatr(juego_t1)
dominancias(juego_t1, T)



# Juego 2 de la tarea variacion para dominancias
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
ejem_domin_2 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ejem_domin_2) <- c('S1', 'S2', 'PHI1', 'PHI2')
ejem_domin_2[1,] <- c('a', 'A', 9, 7)
ejem_domin_2[2,] <- c('a', 'B', -2, -9)
ejem_domin_2[3,] <- c('b', 'A', -2, 5)
ejem_domin_2[4,] <- c('b', 'B', 4, 5)
ejem_domin_2
repEstr(ejem_domin_2)
repMatr(ejem_domin_2)


a <- dominancias(juego_t4,T)
b <- reduccionPorDominancias(falsasOpciones,T)

b <- reduccionPorDominancias(ejem_domin_2,T)


