base = read.csv('D:/Machine Learning com R/Censo/census.csv')
base$X = NULL

table(base$sex)
unique(base$sex)
base$sex = factor(base$sex, levels = c(' Female', ' Male'), labels = c(0, 1))
base[is.nan(base$sex)]

