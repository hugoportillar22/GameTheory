# REAJUSTE DE NASH EJEMPLAR
j <- 2
pe_j1 <- c('A', 'B')
pe_j2 <- c('c', 'd')
filas <- length(pe_j1)*length(pe_j2)
j_reajusteN <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(j_reajusteN) <- c('S1', 'S2', 'PHI1', 'PHI2')
j_reajusteN[1,] <- c('A', 'c', 2, 4)
j_reajusteN[2,] <- c('A', 'd', 3, -3)
j_reajusteN[3,] <- c('B', 'c', 4, 1)
j_reajusteN[4,] <- c('B', 'd', 5, 2)