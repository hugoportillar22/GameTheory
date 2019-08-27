# Juego ejemplo 6
j <- 2
pe_j1 <- c('uno', 'dos', 'tres')
pe_j2 <- c('A', 'B')
filas <- length(pe_j1)*length(pe_j2)
juego_ejemplo6 <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(juego_ejemplo6) <- c('S1', 'S2', 'PHI1', 'PHI2')
juego_ejemplo6[1,] <- c('uno', 'A', -7, 9)
juego_ejemplo6[2,] <- c('uno', 'B', 0, 1)
juego_ejemplo6[3,] <- c('dos', 'A', 2, 7)
juego_ejemplo6[4,] <- c('dos', 'B', 2, 1)
juego_ejemplo6[5,] <- c('tres', 'A', 3, 7)
juego_ejemplo6[6,] <- c('tres', 'B', 1, 7)