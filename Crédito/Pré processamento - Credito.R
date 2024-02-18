base = read.csv('D:/Machine Learning com R/Crédito/credit_data.csv')
base$clientid = NULL
summary(base)

base[base$age < 0 & !is.na(base$age), ]
#1 apagar a coluna inteira
base$age = NULL

# 2 apagar somente os registros com problema
base = base[base$age > 0, ]

# 3 preencher os dados manualmente
#calcular a média da idade
mean(base$age, na.rm = TRUE)
mean(base$age[base$age > 0], na.rm = TRUE)
base$age = ifelse(base$age < 0, 40.92, base$age)

base[is.na(base$age), ]
base$age = ifelse(is.na(base$age), mean(base$age, na.rm = TRUE), base$age)

base[, 1:3] = scale(base[1:3])

