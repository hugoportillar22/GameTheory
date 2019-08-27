#Juego ejemplo 3
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
juego_ej3 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_ej3) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_ej3[1,] <- c('a', 'A', 4, 3)
juego_ej3[2,] <- c('a', 'B', 9, 2)
juego_ej3[3,] <- c('b', 'A', 5, -7)
juego_ej3[4,] <- c('b', 'B', 3, 2)