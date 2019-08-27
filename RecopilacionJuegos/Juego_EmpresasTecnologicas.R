# EMPRESAS TECNOL'OGICAS
j <- 2
pe_j1 <- c('Vetar', 'No Vetar')
pe_j2 <- c('Competir', 'No Competir')
filas <- length(pe_j1)*length(pe_j2)
empresasTec <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(empresasTec) <- c('S1', 'S2', 'PHI1', 'PHI2')
empresasTec[1,] <- c('Vetar', 'Competir', -2, -2)
empresasTec[2,] <- c('Vetar', 'No Competir', 6, -2)
empresasTec[3,] <- c('No Vetar', 'Competir', 4, 4)
empresasTec[4,] <- c('No Vetar', 'No Competir', 5, 3)
