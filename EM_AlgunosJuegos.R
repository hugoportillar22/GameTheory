# Algunos juegos en estrategias mixtas

#!!! todos son bipersonales


### MEJOR RESPUESTA PURA
j <- 2
pe_j1 <- c('Norte', 'Sur')
pe_j2 <- c('norte', 'Sur')
filas <- length(pe_j1)*length(pe_j2)
ej_mrp_1 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_mrp_1) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_mrp_1[1,] <- c('Norte', 'norte', 2, 7)
ej_mrp_1[2,] <- c('Norte', 'sur', 9, 11)
ej_mrp_1[3,] <- c('Sur', 'norte', -3, -7)
ej_mrp_1[4,] <- c('Sur', 'sur', 2, 5)

ej_mrp_1
repMatr(ej_mrp_1)

#ES DEBER DEL USUARIO CONFIAREMOS QUE SUME UNO
# Perfil de probabilidades
pe_j1 <- c('Norte', 'Sur')
pe_j2 <- c('norte', 'sur')
filas <- length(pe_j1)+length(pe_j2)

X_mrp_1 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)

names(X_mrp_1) <- c('X', 'p')

X_mrp_1[1,] <- c('Norte', 1/8)
X_mrp_1[2,] <- c('Sur', 7/8)
X_mrp_1[3,] <- c('norte', 3/5)
X_mrp_1[4,] <- c('sur', 2/5)

X_mrp_1

repMatr(X_mrp_1)








### MEJOR RESPUESTA PURA ej 2
j <- 2
pe_j1 <- c('uno', 'dos', 'tres')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
ej_mrp_2 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_mrp_2) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_mrp_2[1,] <- c('uno', 'A', -7, 9)
ej_mrp_2[2,] <- c('uno', 'B', 0, 1)
ej_mrp_2[3,] <- c('dos', 'A', 2, 7)
ej_mrp_2[4,] <- c('dos', 'B', 2, 1)
ej_mrp_2[5,] <- c('tres', 'A', 3, 7)
ej_mrp_2[6,] <- c('tres', 'B', 1, 7)

ej_mrp_2
repMatr(ej_mrp_2)

#ES DEBER DEL USUARIO CONFIAREMOS QUE SUME UNO
# Perfil de probabilidades
filas <- length(pe_j1)+length(pe_j2)
X_mrp_2 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_mrp_2) <- c('X', 'p')
X_mrp_2[1,] <- c('uno', 1/3)
X_mrp_2[2,] <- c('dos',  1/3)
X_mrp_2[3,] <- c('tres', 1/3)
X_mrp_2[4,] <- c('A', 3/4)
X_mrp_2[5,] <- c('B', 1/4)

X_mrp_2

ej2_em <- juegoMixt(ej_mrp_2,X_mrp_2)

respuestasPuras(ej2_em,1)
respuestasPuras(ej2_em,2)
# s'i di'o y eso es un alivio

mejorRP(respuestasPuras(ej2_em,1))



#Experimento para geometico

#Basta con bindear las columas del df y luego darles la dimension correcta.

exp_geom <- array(c(3,-2,1,7,5,1,4,-5,1),c(3,3) )
b <- c(5,5,1)

solve(exp_geom,b)
20/19
13/19
-14/19

#SÍ SALIÓOOO

exp_geom <- array(c(2,1,6,7),c(2,2) )
b <- c(6,6)
solve(exp_geom,b)






### JUEGO FICTICIO ej 3 CORTES DESCORTES....
j <- 2
pe_j1 <- c('Cortes', 'Descortes')
pe_j2 <- c('cortes', 'descortes')
filas <- length(pe_j1)*length(pe_j2)
ej_jFict <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_jFict) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_jFict[1,] <- c('Cortes', 'cortes', -1, -1)
ej_jFict[2,] <- c('Cortes', 'descortes', 0, 2)
ej_jFict[3,] <- c('Descortes', 'cortes', 2, 0)
ej_jFict[4,] <- c('Descortes', 'descortes', -5, -5)

repMatr(ej_jFict)

#ES DEBER DEL USUARIO CONFIAREMOS QUE SUME UNO
# Perfil de probabilidades
filas <- length(pe_j1)+length(pe_j2)
X_jFict <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_jFict) <- c('X', 'p')
X_jFict[1,] <- c('cortes', 1)
X_jFict[2,] <- c('descortes', 0)
X_jFict[3,] <- c('Cortes', 1)
X_jFict[4,] <- c('Descortes', 0)

X_jFict

repEstr(ej_jFict)


### JUEGO FICTICIO ej 4 reducir no reducir. Pag 240 pdf
j <- 2
pe_j1 <- c('Reducir', 'NoReducir')
pe_j2 <- c('reducir', 'noreducir')
filas <- length(pe_j1)*length(pe_j2)
ej_mrp_4 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_mrp_4) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_mrp_4[1,] <- c('Reducir', 'reducir', 2, 2)
ej_mrp_4[2,] <- c('Reducir', 'noreducir', -2, 1)
ej_mrp_4[3,] <- c('NoReducir', 'reducir', 1, -2)
ej_mrp_4[4,] <- c('NoReducir', 'noreducir', 0, 0)

repMatr(ej_mrp_4)

#ES DEBER DEL USUARIO CONFIAREMOS QUE SUME UNO
# Perfil de probabilidades
filas <- length(pe_j1)+length(pe_j2)
X_mrp_4 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_mrp_4) <- c('X', 'p')
X_mrp_4[1,] <- c('Reducir', 1)
X_mrp_4[2,] <- c('NoReducir', 0)
X_mrp_4[3,] <- c('reducir', 0)
X_mrp_4[4,] <- c('noreducir', 1)

X_mrp_4





### JUEGO FICTICIO ej 5 Monopolio vs contender. Pag 228 pdf
j <- 2
pe_j1 <- c('Regalar', 'Prensa', 'Digitales')
pe_j2 <- c('Entrar', 'NoEntrar')
filas <- length(pe_j1)*length(pe_j2)
ej_mrp_5 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_mrp_5) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_mrp_5[1,] <- c('Regalar', 'Entrar', 35, 25)
ej_mrp_5[2,] <- c('Regalar', 'NoEntrar', 80, 0)
ej_mrp_5[3,] <- c('Prensa', 'Entrar', 30, 10)
ej_mrp_5[4,] <- c('Prensa', 'NoEntrar', 60, 0)
ej_mrp_5[5,] <- c('Digitales', 'Entrar', 40, -10)
ej_mrp_5[6,] <- c('Digitales', 'NoEntrar', 50, 0)

repMatr(ej_mrp_5)

#ES DEBER DEL USUARIO CONFIAREMOS QUE SUME UNO
# Perfil de probabilidades
filas <- length(pe_j1)+length(pe_j2)
X_mrp_5 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_mrp_5) <- c('X', 'p')
X_mrp_5[1,] <- c('Regalar', 1)
X_mrp_5[2,] <- c('Prensa', 0)
X_mrp_5[3,] <- c('Digitales', 0)
X_mrp_5[4,] <- c('Entrar', 1)
X_mrp_5[5,] <- c('NoEntrar', 0)

X_mrp_5






# Para m?todo algebraico
### JUEGO FICTICIO ej 3 CORTES DESCORTES, nel este acabo saliendo de l cuaderno
j <- 2
pe_j1 <- c('A', 'B')
pe_j2 <- c('c', 'd')
filas <- length(pe_j1)*length(pe_j2)
ej_mrp_6 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_mrp_6) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_mrp_6[1,] <- c('A', 'c', 7, -7)
ej_mrp_6[2,] <- c('A', 'd', 9, -9)
ej_mrp_6[3,] <- c('B', 'c', 2, -2)
ej_mrp_6[4,] <- c('B', 'd', -1, 1)

repMatr(ej_mrp_6)


estrConsAlg( ej_mrp_6,2)




# Para m?todo algebraico
### JUEGO FICTICIO ej 7, para reajuste de Nash
Este es reajuste, hay que renombrar el ejercicio

#Claramente tiene punto silla en (B,d)

j <- 2
pe_j1 <- c('A', 'B')
pe_j2 <- c('c', 'd')
filas <- length(pe_j1)*length(pe_j2)
ej_mrp_7 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_mrp_7) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_mrp_7[1,] <- c('A', 'c', 2, 4)
ej_mrp_7[2,] <- c('A', 'd', 3, -3)
ej_mrp_7[3,] <- c('B', 'c', 4, 1)
ej_mrp_7[4,] <- c('B', 'd', 5, 2)

repMatr(ej_mrp_7)


#ES DEBER DEL USUARIO CONFIAREMOS QUE SUME UNO
# Perfil de probabilidades
filas <- length(pe_j1)+length(pe_j2)
X_mrp_7 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_mrp_7) <- c('X', 'p')
X_mrp_7[1,] <- c('A', 1)
X_mrp_7[2,] <- c('B', 0)
X_mrp_7[3,] <- c('c', 1)
X_mrp_7[4,] <- c('d', 0)

X_mrp_7


reajusteNash(ej_mrp_7,X_mrp_7,20)

ej_mrp_7


# Juego para ejemplificar Algebraico
j <- 2
pe_j1 <- c('A', 'B')
pe_j2 <- c('c', 'd')
filas <- length(pe_j1)*length(pe_j2)
ej_algeb <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_algeb) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_algeb[1,] <- c('A', 'c', -5, 7)
ej_algeb[2,] <- c('A', 'd', 2, 17)
ej_algeb[3,] <- c('B', 'c', 9, 4)
ej_algeb[4,] <- c('B', 'd', 5, 20)


mejorRP(respuestasPuras(juego_exp, 2))
resultado <- respuestasPuras(juego_exp, 2)
respuestasPuras(juego_exp, 1)

# Partiendo de juego ficticio
#Funci'on que grafica el comportamiento de los perfiles de estrategias
grafJuegoMixt <- function(jFict) {
  plot(jFict[,1],jFict[,2], type="l", col="green",  xlab="Periodos", ylab="Peso en X", ylim=range(1.1,-0.1))
  lines(jFict[,1], jFict[,3], type="l", col="red") #, lwd=2, pch=19)
  title("Comparacion del peso de las dos estrategias")
  legend(0.1,.7,colnames(jFict)[-1], col=c("green","red"), pch=c(15,19))
}



# Volados para antagonico... 

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





# ANTAGONISMO ESTRATEGIAS PURAS
j <- 2
pe_j1 <- c('Aguila', 'Sol')
pe_j2 <- c('aguila', 'sol')
filas <- length(pe_j1)*length(pe_j2)
juego_antag_em <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_antag_em) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_antag_em[1,] <- c('Aguila', 'aguila', -1, 1)
juego_antag_em[2,] <- c('Aguila', 'sol', 1, -1)
juego_antag_em[3,] <- c('Sol', 'aguila', 1, -1)
juego_antag_em[4,] <- c('Sol', 'sol', -1, 1)

juego_antag_em

repMatr(juego_antag_em)

antagonico(juego_antag_em)
valorJuegAlgebr(juego_antag_em, 2 )

maxAseg(juego_antag_em,2)

Max(juego_antag_em)

antagonicoEM(juego_antag_em)

