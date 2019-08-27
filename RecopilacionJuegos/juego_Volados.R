# VOLADOS
j <- 2
pe_j1 <- c('Aguila', 'Sol')
pe_j2 <- c('aguila', 'sol')
filas <- length(pe_j1)*length(pe_j2)
Volados <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(Volados) <- c('S1', 'S2', 'PHI1', 'PHI2')
Volados[1,] <- c('Aguila', 'aguila', -1, 1)
Volados[2,] <- c('Aguila', 'sol', 1, -1)
Volados[3,] <- c('Sol', 'aguila', 1, -1)
Volados[4,] <- c('Sol', 'sol', -1, 1)