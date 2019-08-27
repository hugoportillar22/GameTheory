# ALIADOS VS JAPONESES
j <- 2
pe_j1 <- c('Norte', 'Sur')
pe_j2 <- c('Norte', 'Sur')
filas <- length(pe_j1)*length(pe_j2)
guerra <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(guerra) <- c('S1', 'S2', 'PHI1', 'PHI2')
guerra[1,] <- c('Norte', 'Norte', 2, -2)
guerra[2,] <- c('Norte', 'Sur', 2, -2)
guerra[3,] <- c('Sur', 'Norte', 1, -1)
guerra[4,] <- c('Sur', 'Sur', 3, -3)