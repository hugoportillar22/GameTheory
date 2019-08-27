# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_reajusteN <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_reajusteN) <- c('X', 'p')
X_reajusteN[1,] <- c('A', 1)
X_reajusteN[2,] <- c('B', 0)
X_reajusteN[3,] <- c('c', 1)
X_reajusteN[4,] <- c('d', 0)