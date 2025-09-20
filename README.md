# Análise de Séries Temporais – Acessos à Página do Flamengo na Wikipédia

Este repositório apresenta um estudo dos acessos mensais à página do **Clube de Regatas do Flamengo** na Wikipédia em português. A análise utiliza métodos de séries temporais em R para investigar padrão, sazonalidade e previsibilidade.

## Dados

- **Fonte:** WikiMedia (acessos humanos, todas as plataformas)
- **Período:** julho/2015 a abril/2025
- **Arquivo:** `dados/serie-flamengo-wiki.csv`

## Objetivos

Avaliar a dinâmica temporal dos acessos e ajustar modelos ARMA/ARIMA para previsão.

## Estrutura

/
├── dados/
│   └── serie-flamengo-wiki.csv
├── resultados/
│   ├── gráficos e relatório final (PDFs)
├── scripts/
│   ├── analise-series-temporais-flamengo-1.Rmd
│   ├── analise-series-temporais-flamengo-2.Rmd
│   ├── analise-series-temporais-flamengo-3.Rmd
│   └── tabelas_finais_gerar.R
└── README.md
/ 
## Metodologia

1. **Pré-processamento**
   - Detecção e correção de outliers com `tso` e interpolação linear (`na.approx`).
   - Dessazonalização com decomposição STL (`seasadj`).
   - Teste de estacionariedade (ADF) e diferenciação da série.

2. **Modelagem**
   - Divisão em treino (2015-07 a 2023-04) e teste (2023-05 a 2025-04).
   - Identificação inicial por FAC/FACP sugerindo ARIMA(1,1,1).
   - Avaliação de modelos ARMA(1,1), ARMA(2,1), ARMA(1,2), ARMA(2,2).
   - Comparação por AIC/BIC e análise de significância dos coeficientes.

3. **Modelo Final**
   - Escolhido ARMA(2,1):
     X_t = -0,7101 X_{t-1} - 0,2908 X_{t-2} + ε_t - 1,0000 ε_{t-1}
   - Resíduos com comportamento de ruído branco.

## Requisitos e Execução

- **R ≥ 4.0** e pacotes: `tidyverse`, `forecast`, `tseries`, `knitr`, `broom`,
  `lubridate`, `ggplot2`, `kableExtra`, `xts`, `tsoutliers`, `zoo`, `gridExtra`.
- Abra um dos arquivos `.Rmd` no RStudio e gere o relatório com *Knit*.

## Autor

Jean Jaime – Graduação em Estatística | Estagiário de Dados
