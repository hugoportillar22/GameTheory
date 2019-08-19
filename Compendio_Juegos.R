###################################
# Recopilaci'on de algunos juegos #
###################################

# EMPRESAS TECNOL'OGICAS
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

# FALSAS OPCIONES
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

# ALIADOS VS JAPONESES
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

# VECINO CORTES DESCORTES
j <- 2
pe_j1 <- c('Cortes', 'Descortes')
pe_j2 <- c('cortes', 'descortes')
filas <- length(pe_j1)*length(pe_j2)
ej_vecinos <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_vecinos) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_vecinos[1,] <- c('Cortes', 'cortes', -1, -1)
ej_vecinos[2,] <- c('Cortes', 'descortes', 0, 2)
ej_vecinos[3,] <- c('Descortes', 'cortes', 2, 0)
ej_vecinos[4,] <- c('Descortes', 'descortes', -5, -5)
# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_vecinos <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_vecinos) <- c('X', 'p')
X_vecinos[1,] <- c('cortes', 1)
X_vecinos[2,] <- c('descortes', 0)
X_vecinos[3,] <- c('Cortes', 1)
X_vecinos[4,] <- c('Descortes', 0)

# REAJUSTE DE NASH EJEMPLAR
j <- 2
pe_j1 <- c('A', 'B')
pe_j2 <- c('c', 'd')
filas <- length(pe_j1)*length(pe_j2)
ej_reajusteN <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_reajusteN) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_reajusteN[1,] <- c('A', 'c', 2, 4)
ej_reajusteN[2,] <- c('A', 'd', 3, -3)
ej_reajusteN[3,] <- c('B', 'c', 4, 1)
ej_reajusteN[4,] <- c('B', 'd', 5, 2)
# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_reajusteN <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_reajusteN) <- c('X', 'p')
X_reajusteN[1,] <- c('A', 1)
X_reajusteN[2,] <- c('B', 0)
X_reajusteN[3,] <- c('c', 1)
X_reajusteN[4,] <- c('d', 0)

# METODO ALGEBRAICO EJEMPLAR
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

# VOLADOS
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

# DILEMA DEL PRISIONERO
j <- 2
pe_j <- c('conf', 'NOconf')
filas <- length(pe_j)^2
prisionero <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(prisionero) <- c('S1', 'S2', 'PHI1', 'PHI2')
prisionero[1,] <- c('conf', 'NOconf', 0, -20)
prisionero[2,] <- c('conf', 'conf', -10, -10)
prisionero[3,] <- c('NOconf', 'NOconf', -2, -2)
prisionero[4,] <- c('NOconf', 'conf', -20, 0)

# DISPAREJO
j <- 3
pe_j <- c('arr', 'aba')
filas <- length(pe_j)^3
disparejo <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(disparejo) <- c('S1', 'S2', 'S3', 'PHI1', 'PHI2', 'PHI3')
disparejo[1,] <- c('arr', 'arr', 'arr', 0, 0, 0)
disparejo[2,] <- c('arr', 'arr', 'aba', 0, 0, 1)
disparejo[3,] <- c('arr', 'aba', 'arr', 0, 1, 0)
disparejo[4,] <- c('arr', 'aba', 'aba', 1, 0, 0)
disparejo[5,] <- c('aba', 'arr', 'arr', 1, 0, 0)
disparejo[6,] <- c('aba', 'arr', 'aba', 0, 1, 0)
disparejo[7,] <- c('aba', 'aba', 'arr', 0, 0, 1)
disparejo[8,] <- c('aba', 'aba', 'aba', 0, 0, 0)

# Juego p43: Antag'onico
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

### Juego p240: GUERRA DE PRODUCCI'ON
j <- 2
pe_j1 <- c('Reducir', 'NoReducir')
pe_j2 <- c('reducir', 'noreducir')
filas <- length(pe_j1)*length(pe_j2)
ej_produccion <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_produccion) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_produccion[1,] <- c('Reducir', 'reducir', 2, 2)
ej_produccion[2,] <- c('Reducir', 'noreducir', -2, 1)
ej_produccion[3,] <- c('NoReducir', 'reducir', 1, -2)
ej_produccion[4,] <- c('NoReducir', 'noreducir', 0, 0)
# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_produccion <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_produccion) <- c('X', 'p')
X_produccion[1,] <- c('Reducir', 1)
X_produccion[2,] <- c('NoReducir', 0)
X_produccion[3,] <- c('reducir', 0)
X_produccion[4,] <- c('noreducir', 1)

# Juego p228: MONOPOLIO VS COMPETIDOR
j <- 2
pe_j1 <- c('Regalar', 'Prensa', 'Digitales')
pe_j2 <- c('Entrar', 'NoEntrar')
filas <- length(pe_j1)*length(pe_j2)
ej_MonopoliCompet <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_MonopoliCompet) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_MonopoliCompet[1,] <- c('Regalar', 'Entrar', 35, 25)
ej_MonopoliCompet[2,] <- c('Regalar', 'NoEntrar', 80, 0)
ej_MonopoliCompet[3,] <- c('Prensa', 'Entrar', 30, 10)
ej_MonopoliCompet[4,] <- c('Prensa', 'NoEntrar', 60, 0)
ej_MonopoliCompet[5,] <- c('Digitales', 'Entrar', 40, -10)
ej_MonopoliCompet[6,] <- c('Digitales', 'NoEntrar', 50, 0)
# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_MonopoliCompet <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_MonopoliCompet) <- c('X', 'p')
X_MonopoliCompet[1,] <- c('Regalar', 1)
X_MonopoliCompet[2,] <- c('Prensa', 0)
X_MonopoliCompet[3,] <- c('Digitales', 0)
X_MonopoliCompet[4,] <- c('Entrar', 1)
X_MonopoliCompet[5,] <- c('NoEntrar', 0)

# Juego t1
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

# Juego t2
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

#Juego t3
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

# Juego t4
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

# Juego t5
j <- 2
pe_j1 <- c('N', 'S')
pe_j2 <- c('e', 'o')
filas <- length(pe_j1)*length(pe_j2)
ej_t5 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_t5) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_t5[1,] <- c('N', 'e', 2, 7)
ej_t5[2,] <- c('N', 'o', 9, 11)
ej_t5[3,] <- c('S', 'e', -3, -7)
ej_t5[4,] <- c('S', 'o', 2, 5)
# Perfil en estrategias mixtas sugerido
pe_j1 <- c('N', 'S')
pe_j2 <- c('e', 'o')
filas <- length(pe_j1)+length(pe_j2)
X_t5 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_t5) <- c('X', 'p')
X_t5[1,] <- c('N', 1/8)
X_t5[2,] <- c('S', 7/8)
X_t5[3,] <- c('e', 3/5)
X_t5[4,] <- c('o', 2/5)

# Juego t6
j <- 2
pe_j1 <- c('uno', 'dos', 'tres')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
ej_t6 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(ej_t6) <- c('S1', 'S2', 'PHI1', 'PHI2')
ej_t6[1,] <- c('uno', 'A', -7, 9)
ej_t6[2,] <- c('uno', 'B', 0, 1)
ej_t6[3,] <- c('dos', 'A', 2, 7)
ej_t6[4,] <- c('dos', 'B', 2, 1)
ej_t6[5,] <- c('tres', 'A', 3, 7)
ej_t6[6,] <- c('tres', 'B', 1, 7)
# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_t6 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_t6) <- c('X', 'p')
X_t6[1,] <- c('uno', 1/3)
X_t6[2,] <- c('dos',  1/3)
X_t6[3,] <- c('tres', 1/3)
X_t6[4,] <- c('A', 3/4)
X_t6[5,] <- c('B', 1/4)
