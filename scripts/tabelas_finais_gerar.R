
modelos <- list(
  "ARMA(1,1)" = Arima(treino, order = c(1, 0, 1), include.mean = FALSE),
  "ARMA(2,1)" = Arima(treino, order = c(2, 0, 1), include.mean = FALSE),
  "ARMA(1,2)" = Arima(treino, order = c(1, 0, 2), include.mean = FALSE),
  "ARMA(2,2)" = Arima(treino, order = c(2, 0, 2), include.mean = FALSE)
)

# Fazer para cada tabela, alterando manualmente o nome e o número do modelo
nome <- "ARMA(2,2)"
m <- modelos[[4]]
ct <- coeftest(m)
coef_df <- data.frame(
  Termo     = rownames(ct),
  Estimate  = round(ct[, "Estimate"],   4),
  `Std. Error` = round(ct[, "Std. Error"], 4),
  `z value` = round(ct[, "z value"],     4),
  `Pr(>|z|)`= round(ct[, "Pr(>|z|)"],    1000),
  check.names = FALSE,
  row.names = NULL
)
cat("\n")
knitr::kable(
  coef_df,
  format    = "latex",
  booktabs  = TRUE,
  caption   = paste0("Coeficientes e testes-z para o modelo ", nome),
  label     = paste0("tab:coef_", gsub("[(),]", "", nome))
) %>%
  kable_styling(latex_options = "hold_position")
cat("\n\n")

criterios <- data.frame(
  Modelo = names(modelos),
  AIC    = sapply(modelos, AIC),
  BIC    = sapply(modelos, BIC),
  row.names = NULL,
  stringsAsFactors = FALSE
)

knitr::kable(
  criterios[order(criterios$BIC), ],
  format    = "latex",
  booktabs  = TRUE,
  caption   = "Comparação de AIC e BIC entre os modelos ajustados",
  label     = "tab:criterios_arma"
) %>%
  kable_styling(latex_options = "hold_position")
