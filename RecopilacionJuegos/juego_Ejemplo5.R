# Juego ejemplo 5
j <- 2
pe_j1 <- c('N', 'S')
pe_j2 <- c('e', 'o')
filas <- length(pe_j1)*length(pe_j2)
juego_ejemplo5 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_ejemplo5) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_ejemplo5[1,] <- c('N', 'e', 2, 7)
juego_ejemplo5[2,] <- c('N', 'o', 9, 11)
juego_ejemplo5[3,] <- c('S', 'e', -3, -7)
juego_ejemplo5[4,] <- c('S', 'o', 2, 5)