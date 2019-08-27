# VECINO CORTES DESCORTES
j <- 2
pe_j1 <- c('Cortes', 'Descortes')
pe_j2 <- c('cortes', 'descortes')
filas <- length(pe_j1)*length(pe_j2)
j_vecinos <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(j_vecinos) <- c('S1', 'S2', 'PHI1', 'PHI2')
j_vecinos[1,] <- c('Cortes', 'cortes', -1, -1)
j_vecinos[2,] <- c('Cortes', 'descortes', 0, 2)
j_vecinos[3,] <- c('Descortes', 'cortes', 2, 0)
j_vecinos[4,] <- c('Descortes', 'descortes', -5, -5)