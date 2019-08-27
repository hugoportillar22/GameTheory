# METODO ALGEBRAICO JUEGO EJEMPLO
j <- 2
pe_j1 <- c('A', 'B')
pe_j2 <- c('c', 'd')
filas <- length(pe_j1)*length(pe_j2)
j_algeb <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(j_algeb) <- c('S1', 'S2', 'PHI1', 'PHI2')
j_algeb[1,] <- c('A', 'c', -5, 7)
j_algeb[2,] <- c('A', 'd', 2, 17)
j_algeb[3,] <- c('B', 'c', 9, 4)
j_algeb[4,] <- c('B', 'd', 5, 20)