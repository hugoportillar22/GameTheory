# DISPAREJO
j <- 3
pe_j <- c('arr', 'aba')
filas <- length(pe_j)^3
disparejo <- data.frame(matrix(NA, nrow = filas, ncol = j*2), stringsAsFactors=FALSE)
names(disparejo) <- c('S1', 'S2', 'S3', 'PHI1', 'PHI2', 'PHI3')
disparejo[1,] <- c('arr', 'arr', 'arr', 0, 0, 0)
disparejo[2,] <- c('arr', 'arr', 'aba', 0, 0, 1)
disparejo[3,] <- c('arr', 'aba', 'arr', 0, 1, 0)
disparejo[4,] <- c('arr', 'aba', 'aba', 1, 0, 0)
disparejo[5,] <- c('aba', 'arr', 'arr', 1, 0, 0)
disparejo[6,] <- c('aba', 'arr', 'aba', 0, 1, 0)
disparejo[7,] <- c('aba', 'aba', 'arr', 0, 0, 1)
disparejo[8,] <- c('aba', 'aba', 'aba', 0, 0, 0)