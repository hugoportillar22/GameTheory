# DILEMA DEL PRISIONERO
j <- 2
pe_j <- c('conf', 'NOconf')
filas <- length(pe_j)^2
prisionero <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(prisionero) <- c('S1', 'S2', 'PHI1', 'PHI2')
prisionero[1,] <- c('conf', 'NOconf', 0, -20)
prisionero[2,] <- c('conf', 'conf', -10, -10)
prisionero[3,] <- c('NOconf', 'NOconf', -2, -2)
prisionero[4,] <- c('NOconf', 'conf', -20, 0)