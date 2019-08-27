# Juego ejemplo 2
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
juego_ej2 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_ej2) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_ej2[1,] <- c('a', 'A', 7, 9)
juego_ej2[2,] <- c('a', 'B', 5, -2)
juego_ej2[3,] <- c('b', 'A', -9, -2)
juego_ej2[4,] <- c('b', 'B', 5, 4)