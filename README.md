-----

# Análise de Séries Temporais: Acessos à Página do Flamengo na Wikipédia

## Resumo

Este repositório contém a análise da série temporal de acessos mensais à página do Clube de Regatas do Flamengo na Wikipédia em português. O estudo utiliza a metodologia Box-Jenkins (ARIMA) para modelar os dados, abrangendo desde o pré-processamento até a seleção do modelo final.

  - [cite\_start]**Fonte dos Dados:** WikiMedia, com dados de acessos humanos em todas as plataformas[cite: 6, 7].
  - [cite\_start]**Período de Análise:** Julho de 2015 a Abril de 2025[cite: 8].

-----

## Metodologia

A análise foi conduzida seguindo as etapas padrão para modelagem de séries temporais:

1.  [cite\_start]**Pré-processamento:** A série bruta foi tratada para remover outliers e sazonalidade[cite: 28, 50]. [cite\_start]Um teste de estacionariedade (ADF) foi aplicado, indicando a necessidade de uma diferenciação para estabilizar a série[cite: 65, 70, 72].
2.  [cite\_start]**Identificação do Modelo:** As Funções de Autocorrelação (FAC) e Autocorrelação Parcial (FACP) foram utilizadas na série de treino (Julho/2015 a Abril/2023) para sugerir a ordem dos modelos ARMA candidatos[cite: 85, 103].
3.  [cite\_start]**Estimação e Seleção:** Foram ajustados e comparados quatro modelos: ARMA(1,1), ARMA(2,1), ARMA(1,2) e ARMA(2,2)[cite: 140]. [cite\_start]A seleção foi baseada na significância dos coeficientes (teste-z) e nos critérios de informação (AIC e BIC)[cite: 141, 149].

-----

## Modelo Final

[cite\_start]O modelo **ARMA(2,1)** foi selecionado por apresentar todos os coeficientes estatisticamente significativos e um bom ajuste aos dados[cite: 147, 151]. A equação do modelo ajustado para a série diferenciada é:

[cite\_start]$X\_{t} = -0,7101 X\_{t-1} - 0,2908 X\_{t-2} + \\epsilon\_{t} - 1,0000\\epsilon\_{t-1}$ [cite: 153]

-----

## Estrutura do Repositório

```plaintext
/
├── dados/
├── resultados/
├── scripts/
├── .gitignore
└── README.md
```

-----

## Como Reproduzir a Análise

**1. Requisitos**

  - R (versão recomendada: ≥ 4.0)
  - Pacotes: `tidyverse`, `forecast`, `tseries`, `knitr`, `broom`, `lubridate`, `ggplot2`, `kableExtra`, `xts`, `tsoutliers`, `zoo`, `gridExtra`.

Instale as dependências com o comando:

```r
install.packages(c(
  "tidyverse", "forecast", "tseries", "knitr", "broom",
  "lubridate", "ggplot2", "kableExtra", "xts", "tsoutliers", "zoo", "gridExtra"
))
```

**2. Execução**

1.  Clone este repositório.
2.  Abra o projeto no RStudio.
3.  Execute o arquivo `.Rmd` localizado na pasta `scripts/` para gerar o relatório completo.

-----

## Autor

**Jean Jaime**
Graduando em Estatística | Estagiário de Dados
