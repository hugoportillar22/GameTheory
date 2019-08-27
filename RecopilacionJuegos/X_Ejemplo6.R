# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_ejemplo6 <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_ejemplo6) <- c('X', 'p')
X_ejemplo6[1,] <- c('uno', 1/3)
X_ejemplo6[2,] <- c('dos',  1/3)
X_ejemplo6[3,] <- c('tres', 1/3)
X_ejemplo6[4,] <- c('A', 3/4)
X_ejemplo6[5,] <- c('B', 1/4)