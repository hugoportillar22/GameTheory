# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_produccion <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_produccion) <- c('X', 'p')
X_produccion[1,] <- c('Reducir', 1)
X_produccion[2,] <- c('NoReducir', 0)
X_produccion[3,] <- c('reducir', 0)
X_produccion[4,] <- c('noreducir', 1)