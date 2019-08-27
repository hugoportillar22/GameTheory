# Juego ejemplo 1
j <- 2
pe_j1 <- c('a', 'b')
pe_j2 <- c('A', 'B', 'C')
filas <- length(pe_j1)*length(pe_j2)
juego_ej1 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_ej1) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_ej1[1,] <- c('a', 'A', 2, 4)
juego_ej1[2,] <- c('a', 'B', 3, -3)
juego_ej1[3,] <- c('a', 'C', 5, 9)
juego_ej1[4,] <- c('b', 'A', 4, 1)
juego_ej1[5,] <- c('b', 'B', 5, 2)
juego_ej1[6,] <- c('b', 'C', 7, -9)