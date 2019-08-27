# Perfil en estrategias mixtas sugerido
filas <- length(pe_j1)+length(pe_j2)
X_MonopoliCompet <- data.frame(matrix(NA, nrow = filas, ncol = 2), stringsAsFactors=FALSE)
names(X_MonopoliCompet) <- c('X', 'p')
X_MonopoliCompet[1,] <- c('Regalar', 1)
X_MonopoliCompet[2,] <- c('Prensa', 0)
X_MonopoliCompet[3,] <- c('Digitales', 0)
X_MonopoliCompet[4,] <- c('Entrar', 1)
X_MonopoliCompet[5,] <- c('NoEntrar', 0)