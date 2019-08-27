# MONOPOLIO VS COMPETIDOR
j <- 2
pe_j1 <- c('Regalar', 'Prensa', 'Digitales')
pe_j2 <- c('Entrar', 'NoEntrar')
filas <- length(pe_j1)*length(pe_j2)
j_MonopoliCompet <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(j_MonopoliCompet) <- c('S1', 'S2', 'PHI1', 'PHI2')
j_MonopoliCompet[1,] <- c('Regalar', 'Entrar', 35, 25)
j_MonopoliCompet[2,] <- c('Regalar', 'NoEntrar', 80, 0)
j_MonopoliCompet[3,] <- c('Prensa', 'Entrar', 30, 10)
j_MonopoliCompet[4,] <- c('Prensa', 'NoEntrar', 60, 0)
j_MonopoliCompet[5,] <- c('Digitales', 'Entrar', 40, -10)
j_MonopoliCompet[6,] <- c('Digitales', 'NoEntrar', 50, 0)