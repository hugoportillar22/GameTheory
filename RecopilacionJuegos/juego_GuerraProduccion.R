# GUERRA DE PRODUCCI'ON
j <- 2
pe_j1 <- c('Reducir', 'NoReducir')
pe_j2 <- c('reducir', 'noreducir')
filas <- length(pe_j1)*length(pe_j2)
j_produccion <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(j_produccion) <- c('S1', 'S2', 'PHI1', 'PHI2')
j_produccion[1,] <- c('Reducir', 'reducir', 2, 2)
j_produccion[2,] <- c('Reducir', 'noreducir', -2, 1)
j_produccion[3,] <- c('NoReducir', 'reducir', 1, -2)
j_produccion[4,] <- c('NoReducir', 'noreducir', 0, 0)