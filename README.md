# analise-series-temporais-flamengo
Análise de séries temporais dos acessos à página do Flamengo na Wikipédia usando R

---

# 📊 Análise de Séries Temporais: Acessos à Página do Flamengo na Wikipédia

Este repositório traz uma análise detalhada dos acessos mensais à página do **Clube de Regatas do Flamengo** na Wikipédia em Português, utilizando técnicas de séries temporais no R. O projeto faz parte das atividades da graduação em Estatística e serve como portfólio de análise de dados aplicados.

## 📝 Sobre o Projeto

- **Objetivo:** Investigar padrões, sazonalidade e previsibilidade dos acessos à página do Flamengo, do ponto de vista estatístico, através de modelos ARMA/ARIMA.  
- **Período analisado:** Julho/2015 a Abril/2025  
- **Dados:** Acessos humanos (não-automatizados) em todas as plataformas (desktop, mobile etc.), extraídos da base [WikiMedia](https://wikimedia.org/).

---

## 📁 Estrutura do Repositório

```plaintext
/
├── dados
│   └── serie-flamengo-wiki.csv
├── resultados
│   └── gráficos
│       ├── acf-pacf-1.pdf
│       ├── unnamed-chunk-3-1.pdf
│       ├── unnamed-chunk-4-1.pdf
│       ├── unnamed-chunk-5-1.pdf
│       ├── unnamed-chunk-7-1.pdf
│       ├── unnamed-chunk-8-1.pdf
│       └── analise-series-temporais-flamengo.pdf
├── scripts
│   ├── analise-series-temporais-flamengo-1.Rmd
│   ├── analise-series-temporais-flamengo-2.Rmd
│   ├── analise-series-temporais-flamengo-3.Rmd
│   └── tabelas_finais_gerar.R
├── .gitignore
└── README.md
````

---

## 🚀 Como Executar a Análise

**1. Requisitos**

* **R** (versão recomendada: ≥ 4.0)
* **RStudio** (opcional, mas recomendado)
* **Pacotes necessários:**

  * `tidyverse`
  * `forecast`
  * `tseries`
  * `knitr`
  * `broom`
  * `lubridate`
  * `ggplot2`
  * `kableExtra`
  * `xts`
  * `tsoutliers`
  * `zoo`
  * `gridExtra`

Instale todos de uma vez:

```r
install.packages(c(
  "tidyverse", "forecast", "tseries", "knitr", "broom",
  "lubridate", "ggplot2", "kableExtra", "xts", "tsoutliers", "zoo", "gridExtra"
))
```

**2. Passos para rodar**

1. Clone este repositório:

   ```sh
   git clone https://github.com/seuusuario/analise-series-temporais-flamengo.git
   ```
2. Navegue até a pasta do projeto e abra o RStudio.
3. Abra o arquivo `scripts/analise_final_dos_modelos.Rmd`.
4. Verifique se o dataset `dados/Serie_Fla.csv` está no local correto. Ajuste o caminho no `.Rmd` se necessário.
5. Clique em **Knit** para gerar o relatório em PDF.

---

## 🧩 Etapas da Análise

1. **Descrição dos Dados:**

   * Amostra da base WikiMedia, foco em acessos humanos à página do Flamengo.
2. **Pré-processamento:**

   * Detecção e tratamento de outliers.
   * Dessazonalização com STL (`stl` + `seasadj`).
   * Teste de estacionariedade (ADF) e diferenciação da série.
3. **Divisão Treino/Teste:**

   * Separação dos dados em conjuntos de treino e teste para avaliação de previsões.
4. **Identificação de Modelos:**

   * Análise das funções ACF e PACF para sugerir modelos iniciais.
5. **Ajuste e Comparação de Modelos:**

   * Estimação de modelos ARMA/ARIMA candidatos.
   * Tabelas de coeficientes e testes-z.
   * Comparação por critérios de informação (AIC e BIC).
   * Seleção do modelo final.
6. **Discussão dos Resultados:**

   * Interpretação dos achados, limitações e sugestões de continuidade.

---

## 📊 Exemplo de Resultados

**Amostra dos dados:**

| Data       | Acessos |
| ---------- | ------- |
| 2015-07-01 | 69.072  |
| 2015-08-01 | 69.949  |
| 2015-09-01 | 61.722  |

**Exemplo de estrutura do modelo ajustado:**

```r
# Modelo ARMA(2,1) ajustado
X_t = -0,7101 X_{t-1} - 0,2908 X_{t-2} + ε_t - 1,0000 ε_{t-1}
```
---

## 📚 Referências

* [WikiMedia API](https://wikimedia.org/api/rest_v1/)
* Documentação dos pacotes R utilizados

---

## 👤 Autor

**Jean Jaime**
Graduando em Estatística | Estagiário de Dados

---





