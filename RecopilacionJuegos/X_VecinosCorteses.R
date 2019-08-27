# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_vecinos <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_vecinos) <- c('X', 'p')
X_vecinos[1,] <- c('cortes', 1)
X_vecinos[2,] <- c('descortes', 0)
X_vecinos[3,] <- c('Cortes', 1)
X_vecinos[4,] <- c('Descortes', 0)