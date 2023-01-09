# Medidas de Tendência Central - Média e Mediana 
setwd("C:/FCD/BigDataRAzure/Cap09")
getwd()

##### Medidas de Tendência Central #####

# As medidas de tendência central são valores representativos da distribuição em torno da qual as outras medidas se distribuem. 
# Duas medidas são as mais utilizadas: a média aritmética e a mediana.

##### Média #####
# A média aritmética de um conjunto de n valores, como o próprio nome indica, é obtida somando-se todas as medidas e dividindo-se a soma por n. 

# Representamos cada valor individual por uma letra (x, y, z, etc.) seguida por um sub-índice, ou seja, representamos os n valores da amostra 
# por x1, x2, x3, …, xn, onde x1 é a primeira observação, x2 é a segunda e assim por diante. 

# Exemplo: A lista abaixo possui as notas de 10 alunos de um curso de graduação no exame final. Calcule a média.
notas = c(6.4, 7.3, 9.8, 7.3, 7.9, 8.2, 9.1, 5.6, 8.5, 6.8) 
notas
?mean
mean(notas)  
print(mean(notas))


##### Mediana #####

# A mediana é uma medida alternativa à média aritmética para representar o centro da distribuição, muito usada em estatística descritiva. 

# A mediana de um conjunto de medidas (x1, x2, x3, …, xn) é um valor M tal que pelo menos 50% das medidas 
# são menores ou iguais a M e pelo menos 50% das medidas são maiores ou iguais a M. 

# Em outras palavras, 50% das medidas ficam abaixo da mediana e 50% acima.

# Se o número de elementos for ímpar, a mediana é o elemento do meio: n / 2
# Se o número de elementos for par, a mediana ainda é o elemento do meio, mas calculado assim: (n + 1) / 2

# Exemplo: Os dados das listas abaixo são tempos de vida (em dias) de 8 e 9 lâmpadas. Calcule a média e a mediana.
tempos1 = c(400, 350, 510, 550, 690, 720, 750, 2000)
tempos2 = c(400, 350, 510, 550, 630, 690, 720, 750, 2000)
mean(tempos1)
mean(tempos2)
?median
median(tempos1) 
median(tempos2)


##################################################################################################################################
# Medidas de Tendência Central - Moda, Valores Máximo e Mínimo e Amplitude 

##### Moda #####
# A moda de uma distribuição é o valor que ocorre mais frequentemente, ou o valor que corresponde ao intervalo de classe com a maior frequência. 

# A moda, da mesma forma que a mediana, não é afetada por valores extremos.

# Uma distribuição de frequência que apresenta apenas uma moda é chamada de unimodal. 
# Se a distribuição apresenta dois pontos de alta concentração ela é chamada de bimodal. 

# Distribuições bimodais ou multimodais podem indicar que na realidade a distribuição de frequência se refere a duas populações cujas 
# medidas foram misturadas. 

# Por exemplo, suponha que um lote de caixas de leite longa vida é amostrado e em cada caixa da amostra é medido o volume envasado. 
# Se o lote é formado pela produção de duas máquinas de envase que estão calibradas em valores diferentes, é possível que o histograma apresente 
# duas modas, uma para cada valor de calibração.

# Exemplo: Uma loja de calçados quer saber qual o tamanho mais comprado em um dia de vendas. A partir dos dados coletados a seguir, determine o tamanho mais pedido. 
tamanhos = c(38, 38, 36, 37, 36, 36, 40, 39, 36, 35, 36)
mean(tamanhos)  
median(tamanhos)

moda = function(dados) {
  vetor = table(as.vector(dados))
  names(vetor)[vetor == max(vetor)]
}
moda(tamanhos)


##### Valores Máximo e Mínimo #####

# Representam os valores máximos e mínimos da distribuição de dados

# Exemplo: Quais são os valores máximo e mínimo dos tamanhos de sapatos do item anterior.
tamanhos = c(38, 38, 36, 37, 36, 36, 40, 39, 36, 35, 36)
max(tamanhos)
min(tamanhos)


##### Amplitude #####
# A amplitude é a diferença entre o maior e menor valor de um conjunto de dados qualquer.

# Exemplo: Bob quer aprender a voar com asa delta, e ele quer saber qual a amplitude máxima que um voo pode ter. 
# A partir dos dados de outros praticantes de voo livre, determine qual a amplitude. 
dados = c(28, 31, 45, 58, 22, 33, 42, 68, 24, 37)
range(dados)
diff(range(dados))



##################################################################################################################################
# Quartil e Percentil 

##### O que são os Quartis e Percentis? #####
# Se o número de observações é grande, é interessante calcular algumas outras medidas de posição. 
# Essas medidas são uma extensão do conceito de mediana.

# Suponha que estamos conduzindo um experimento com animais. 
# Eles recebem uma droga e medimos o tempo de vida (em dias) após a ingestão dessa droga. Poderíamos fazer a seguinte pergunta: 

# Qual é o tempo em que 50% dos animais ainda estão vivos? Obviamente esse valor será a mediana. 

# Poderíamos estar interessados em saber qual é o tempo em que 75% dos animais estão vivos. Ou 25%. 

# Esses valores são chamados de Quartis da distribuição (dividem a distribuição em quartas partes) 
# e são representados por Q1  (1º quartil – 25%) e Q3 (3º quartil – 75%). 
# O segundo quartil, Q2, que corresponde a 50%, é a mediana.

# Esse conceito pode ser estendido um pouco mais, e em lugar de 25%, 50% e 75%, podemos querer calcular percentis (5%, 10%, 90%).


##### Quartis #####
# Quartis são valores que dividem um conjunto de dados em quatro partes iguais. 
# O primeiro quartil será o termo que terá 25% dos dados antes dele, 
# o segundo quartil também seguirá a mesma lógica e irá coincidir com a mediana, 
# o terceiro quartil será o termo com 75% dos valores do conjunto de dados antes dele 
# e o quarto quartil será o último termo do conjunto com 100% dos dados antes dele.

# Exemplo: O horário de funcionamento de um banco já está se esgotando, para adiantar o atendimento dos clientes o 
# gerente decide parar de chamar individualmente e passa a chamar em grupos de 1/4 da quantidade total de clientes na fila. 
# A partir dos números das fichas dos clientes, determine os grupos das 4 chamadas.
num_fichas = c(54, 55, 56, 57, 58, 59, 60, 61, 62, 63)
?quantile
quantile(num_fichas)

# Ou seja, a primeira chamada contemplará os clientes com as fichas de 54 até 56, a segunda de 57 até 58, a terceira de 59 até 60 e a quarta de 61 até 63.


##### Percentis #####
# Os percentis são os valores que separam um conjunto de dados em 100 partes iguais. 
# O percentil 10 representa o décimo percentil e terá 10% dos dados antes dele, a lógica se seguirá para todo percentil.

# Exemplo: Considerando os dados do exemplos anterior, calcule o percentil 10, 80 e 98.
num_fichas = c(54, 55, 56, 57, 58, 59, 60, 61, 62, 63)
quantile(num_fichas, c(.10))
quantile(num_fichas, c(.80))
quantile(num_fichas, c(.98))
quantile(num_fichas, c(.10, .80, .98))

# Ou seja, o cliente que está com pouco mais do que 98% da fila a frente dele terá a ficha 63, o que está com pouco menos do que 80% da fila a frente dele 
# terá a ficha 61 e o que está com pouco mais do que 10% da fila a frente dele terá a ficha 55.



##################################################################################################################################
# Medidas de Dispersão - Desvio Padrão e Variância 

##### Desvio Padrão #####
# O desvio padrão indica o grau de variação de um conjunto de dados, este conjunto pode ser amostral ou populacional.

# Para um conjunto amostral o desvio padrão é dado pelo somatório da raiz quadrada do quadrado da diferença entre o valor do dado coletado (xi) e o valor médio (x), 
# dividido pelo tamanho amostral menos um (n−1).

# Exemplo: Um engenheiro precisa decidir entre três modelos de máquinas de corte de alta precisão, para isso ele usa como critério o desvio padrão. A máquina que tiver 
# menor desvio será a escolhida por ele. 
# A partir dos dados de medida de corte das 3 máquinas, determine qual deve ser a escolhida pelo engenheiro. 
# Máquina 1 (mm) = (181.9, 180.8, 181.9, 180.2, 181.4). 
# Máquina 2 (mm) = (180.1, 181.8, 181.5, 181.2, 182.4). 
# Máquina 3 (mm) = (182.1, 183.7, 182.1, 180.2, 181.9).

Maq1 = c(181.9, 180.8, 181.9, 180.2, 181.4)
Maq2 = c(180.1, 181.8, 181.5, 181.2, 182.4)
Maq3 = c(182.1, 183.7, 182.1, 180.2, 181.9)

mean(Maq1)
mean(Maq2)
mean(Maq3)

sd(Maq1) 
sd(Maq2)
sd(Maq3)

# Conclusão: a Máquina 1 possui a menor variação dos dados com 0.73. Portanto, a máquina a ser escolhida pelo engenheiro será a Maquina 1.


##### Variância #####
# A variância também é um importante indicador de variabilidade dos dados. 
# Como a soma dos desvios sempre somarão zero, é necessário usar uma medida de variabilidade que torne os desvios negativos em valores 
# não negativos, para que a soma dos desvios represente um valor de variabilidade do conjunto de dados diferente de zero.

# A variância então é o quadrado do desvio padrão. As medidas amostrais tem n−1 graus de liberdade. 

# Graus de liberdade é a diferença entre a dimensão da amostra (n) e a quantidade de parâmetros a serem avaliados na população. 

# No caso da variância amostral, é usada como referência a média da amostra e isso tornaria o valor da variância amostral menor do que o 
# da variância populacional, devido aos valores coletados estarem mais próximos da média amostral. 

# Para corrigir isso o divisor perde 1 grau de liberdade e quando se trata das medidas mostrais utilizamos o n−1.

# Cálculo da variância para o exemplo anterior.

var(Maq1) 
var(Maq2)
var(Maq3)



##################################################################################################################################
# Medidas de Dispersão - Coeficiente de Variação 

##### Coeficiente de Variação #####
# O coeficiente de variação indica a quantidade de variação de um conjunto de dados em relação a média. 
# O valor é dado por uma relação direta do quociente entre o desvio com a média da amostra.

# O coeficiente de variação (CV), mede o desvio padrão em termos de percentual da média. 
# Um CV alto, indica alta variabilidade dos dados, ou seja, menos consistência dos dados. 
# Um CV menor, indica mais consistência dentro do conjunto de dados.

# Quando comparamos a consistência entre 2 conjuntos de dados em relação a suas médias, 
# é melhor feito quando utilizamos coeficiente de variação. 

# Exemplo: Imagine que um investidor está decidindo se compra ações da Nike ou Adidas na bolsa de valores. 
# O valor médio da ação de cada empresa e o desvio padrão, são dados a seguir. 
# Qual deve ser a escolha do investidor?

# Nike ==> Valor médio da ação = $55.62 / desvio padrão = $5.10 
# Adidas ==> Valor médio da ação = $24.86 / desvio padrão = $3.60 

# CV = (desvio/media) * 100
CV_Nike   = (5.10/55.62) * 100
CV_Adidas = (3.60/24.86) * 100

print(CV_Nike)
print(CV_Adidas)

# Conclusão

# Um investidor se sentiria mais seguro em adquirir ações da Nike, pois o preço das ações 
# teria uma variação menor, podendo assim evitar perdas e permitindo ao investidor ter 
# um investimento mais seguro.



##################################################################################################################################
# Interpretando um Histograma 

##### Histograma #####
# Um histograma é um modelo de gráfico que representa uma distribuição de frequências através de um agrupamento de classes, de forma que 
# se pode contabilizar as ocorrências dos dados em cada classe. 

# Possibilita visualizar a distribuição de medidas, a dispersão, simetria dos dados e tendências centrais.

# Os conceitos de Frequência Absoluta e Frequência Relativa são importantes na construção de um histograma. 

# Por frequência absoluta, entende-se o número de observações correspondente a cada classe. 

# A frequência relativa, por sua vez, diz respeito ao quociente entre a frequência absoluta da classe correspondente e a soma das frequências absolutas. 

# A soma das áreas de todos os retângulos do histograma deve ser igual a 1.

# Como fazer um histograma manualmente?

# 1- Ordenar os valores
# 2- Encontrar a amplitude total: A = xmax − xmin. Assim, os intervalos devem cobrir uma faixa de, no mínimo, o valor da amplitude.
# 3- Estimar o número de classes: 2k ≤ n. Sendo que n é igual a raiz quadrada do número total de observações.
# 4- Estimar o tamanho de cada intervalo de classe: C = A/k
# 5- Contar o número de observações que caem em cada intervalo de classe (subintervalo), frequência.
# 6- Determinar a frequência relativa do intervalo: Frequência relativa = frequência/total de observações.
# 7- Construir o gráfico.

# Exemplo: Os seguintes dados representam o número de acidentes diários em um complexo industrial (colocados em ordem crescente), durante o período de 50 dias. 
# Represente o histograma desses dados.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")
hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência", breaks = 6)
hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência", breaks = 5)
?hist



##################################################################################################################################
# Coeficiente de Assimetria (Skewness) 

##### Coeficiente de Assimetria #####
# O coeficiente de assimetria é o que permite dizer se uma determinada distribuição é assimétrica ou não.

# Exemplo: Os seguintes dados representam o número de acidentes diários em um complexo industrial (colocados em ordem crescente), durante o período de 50 dias. 
# Represente o histograma desses dados.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")

mean(dados)
sd(dados)
median(dados)

library(moments)
?skewness
SK = skewness(dados)
print(SK)

# Sk ≈ 0: dados simétricos. Tanto a cauda do lado direito quanto a do lado esquerdo da função densidade de probabilidade são iguais.
# Sk < 0: assimetria negativa. A cauda do lado esquerdo da função densidade de probabilidade é maior que a do lado direito.
# Sk > 0: assimetria positiva. A cauda do lado direito da função densidade de probabilidade é maior que a do lado esquerdo.

# O coeficiente de assimetria é 0.2549279. 
# Como o coeficiente de assimetria é maior que 0, diz-se que a curva apresenta assimetria positiva 
# e a cauda do lado direito da função densidade de probabilidade é maior que no lado esquerdo. 
# Ao observar também o Histograma, percebe-se que há maior densidade de dados do lado direito. 

# Outro exemplo
set.seed(1234)
x = rnorm(1000)
hist(x)
skewness(x)



##################################################################################################################################
# Coeficiente de Curtose (Kurtosis) 

##### Coeficiente de Assimetria #####
# O coeficiente de curtose é uma medida que caracteriza o achatamento da curva da função de distribuição.

# Exemplo: Os seguintes dados representam o número de acidentes diários em um complexo industrial (colocados em ordem crescente), durante o período de 50 dias. 
# Represente o histograma desses dados.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")

mean(dados)
sd(dados)
median(dados)

library(moments)
?kurtosis
CK = kurtosis(dados)
print(CK)

# CK ≈ 0: Distribuição normal. Chamada de Curtose Mesocúrtica.
# CK < 0: Cauda mais leve que a normal. Para um coeficiente de Curtose negativo, tem-se uma Curtose Platicúrtica.
# CK > 0: Cauda mais pesada que a normal. Para um coeficiente de Curtose positivo, tem-se uma Curtose Leptocúrtica.

# O coeficiente de curtose é igual a 2.37652. Logo, como o valor de CK é maior que 0, a curva é Leptocúrtica.

# Outro exemplo
n.sample <- rnorm(n = 10000, mean = 55, sd = 4.5)

# Skewness e Kurtosis
library(moments)
skewness(n.sample)
kurtosis(n.sample)

# Histograma
library(ggplot2)
datasim <- data.frame(n.sample)
ggplot(datasim, aes(x = n.sample), binwidth = 2) + 
  geom_histogram(aes(y = ..density..), fill = 'red', alpha = 0.5) + 
  geom_density(colour = 'blue') + xlab(expression(bold('Dados'))) + 
  ylab(expression(bold('Densidade')))



##################################################################################################################################
# Interpretando um BoxPlot 

##### Boxplot #####
# Box-plot, ou diagrama de caixa, é possível obter informações sobre vários aspectos dos dados simultaneamente como, outliers, dispersão, 
# tendências centrais, erros padrão e simetria. 

# Utilizado para avaliar a distribuição empírica dos dados, é formado pelo primeiro e terceiro quartis, juntamente com a mediana.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

mean(dados)
sd(dados)
median(dados)
range(dados)
quantile(dados)

boxplot(dados, main = "Número de Acidentes Diários")



##################################################################################################################################
# Covariância e Coeficiente de Correlação 

##### Covariância #####
# A covariância entre duas variáveis (X, Y) é uma medida de variabilidade conjunta dessas duas variáveis aleatórias. 
# Quando a covariâncias entre essas variáveis é positiva os dados apresentam tendência positiva na dispersão. 
# Quando o valor da covariância é negativo, o comportamento é análogo, no entanto, os dados apresentam tendências negativas. 

# Covariância é uma medida de como as alterações em uma variável estão associadas a mudanças em uma segunda variável. 
# Especificamente, a covariância mede o grau em que duas variáveis estão linearmente associadas. 
# No entanto, também é frequentemente usado informalmente como uma medida geral de como duas variáveis são 
# monotonicamente relacionadas.


##### Coeficiente de Correlação #####
# Correlação é uma versão em escala de covariância que assume valores em [−1,1] 
# com uma correlação de ± 1 indicando associação linear perfeita e 0 indicando nenhuma relação linear. 
# Esse escalonamento torna a correlação invariante às mudanças na escala das variáveis originais 
# A constante de escala é o produto dos desvios padrão das duas variáveis.

# Portanto, o Coeficiente de Correlação p mede o grau de correlação entre duas variáveis.

# Para p = 1, tem-se uma correlação perfeita entre as duas variáveis. 
# Se p = - 1, há uma correlação perfeita entre as variáveis, no entanto, essa correlação é negativa. 
# Caso p = 0, as duas variáveis não dependem linearmente uma da outra.

# Para p = -1 indica uma forte correlação negativa: isso significa que toda vez que x aumenta, y diminui 
# Para p = 0 significa que não há associação entre as duas variáveis (x e y) 
# Para p = 1 indica uma forte correlação positiva: isso significa que y aumenta com x 

# Exemplo: Analisar a covariância e correlação entre as variáveis milhas/galão e peso do veículo no dataset mtcars.

my_data <- mtcars
View(my_data)

install.packages("ggpubr")
library("ggpubr")

ggscatter(my_data, x = "mpg", y = "wt", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Autonomia", ylab = "Peso do Veículo")

# Definindo x e y
x = my_data$mpg
y = my_data$wt

# Covariância
?cov
cov(x, y)

# Correlação
?cor
cor(x, y)