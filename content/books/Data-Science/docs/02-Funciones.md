# **Funciones y variables**

## Creación de Variables

Las variables son espacios virtuales, que puede contener de elementos o estar vacíos. Pensar en una tabla de datos es pensar en un objeto contenedor "mediciones" de un trabajo de investigación, por mencionar un ejemplo. Dicha tabla puede ser considerada una variable u objeto en R. 

Para guardar el valor de una operación una función en la memoria de trabajo de RStudio, o ambiente (pestaña _Environment_) necesitamos _asignar_ ese contenido a un nombre para que el programa lo "recuerde". Para guardar un valor numérico en una variable llamada NUM, podemos usar el **operador de asignación** `<-`.


```r
NUM <- 2022
```

Si se desea ver el contenido de una variable previamente guardada en el ambiente, basta con ejecutar el nombre d ela variable:


```r
NUM
```

```
## [1] 2022
```

o usar la función `print()` para imprimirla en la consola:


```r
print(NUM)
```

```
## [1] 2022
```

Existe la posibilidad de asignar con un operador de asignación inverso `->`. Toma en cuenta qué debe ir en la cola (contenido) y en la cabeza (nombre) del operador. En otras palabras, la "flecha" que se forma con este operador siempre apunta al futuro nombre de la variable. Recuerda, la variable no existe hasta que no se ejecute y aparezca dicho nombre en el ambiente de RStudio.


```r
# Operador de asignación inverso
2022 -> NUM
```

El símbolo `=` también funciona, pero, por convención, este no se debe usar para crear variables. Se usará dentro de las funciones para "asignar" contenido a los argumentos de las mismas (CROSSREF).


```r
# Mal uso del símbolo =
NUM = 2022

# Buen uso del símbolo = : siempre dentro de una función.
# Calcular el logaritmo en base 2 de 10
bs <- 2
log(10, base = bs)
```

```
## [1] 3.321928
```

> Comentario: en el ejemplo de arriba no es necesario guardar en el ambiente la variable `bs` para que sea usada posteriormente dentro de `log()`. Es solo una demostración que iremos aplicando más adelante con ejemplos complejos donde sí será necesario.


## Funciones

### Creación de funciones 

## Clasificación de variables

Toda variable cuenta con dos atributos: 

1. Su contenido
2. Su estructura

### Clases atómicas

### Vectores

### Factores

### Listas

### Matrices

### Data Frames

### Tibbles



## Indexación de variables

### Indexación en variables de una dimensión

### Indexación en variables de dos dimensiones

### Indexación en listas


## Operadores lógicos

## Tópicos básicos adicionales

### Librerías y repositorios

### Pedir ayuda en RStudio

### Limpieza de datos: valores perdidos



# **Flujos de trabajo con** `tidyverse`

## Pipe

## Tablas anchas y largas

## Filtrado

## Selección

## Agrupamiento, Reordenamiento y conteo

## Transformación y creación de columnas

## Resúmenes estadísticos

## Combinar bases de datos


# (PART\*) Gráficos Avanzados con ggplot2 {.unnumbered}

# **Probabilidades**
# **Estadística descriptiva**
# **Test de normalidad**
# **Test de comparaciones de grupos**
# **Introducción a los modelos lineales**
# **Correlaciones**
# **Análisis de varianza**
# **Análosis de poder**

# (PART\*) Análisis Estadístico Básico {.unnumbered}

# **Probabilidades**
# **Estadística descriptiva**
# **Test de normalidad**
# **Test de comparaciones de grupos**
# **Introducción a los modelos lineales**
# **Correlaciones**
# **Análisis de varianza**
# **Análisis de poder**


# (PART\*) Modelamiento Estadístico {.unnumbered}

# **Regresión lineal clásica (LM)**
## Mínimos cuadrados y máxima verosimilitud
## Propiedades de los estimadores
## Regresión lineal múltiple
## Selección de modelos

# **Modelos lineales generalizados (GLM)**
## Logística
## Binomial
## Poisson
## Binomial Negativa
## Hurdle y Zero inflados
## Weibull
## Gamma
## Beta

# **Modelos de efectos mixtos: clásica (LMM) y generalizados (GLMM)**

# (PART\*) Estadística Multivariada {.unnumbered}

# **Métodos interdependientes**
## Clustering jerárquico
## Clustering no jerárquico
## Análisis de componentes principales (PCA)
## Análisis de coordenadas principales (MDS)
## Escalamiento multidimensional no métrico (NMDS)


# **Métodos Canónicos**
## Análisis de correspondencia canónica (CCA)
## Análisis de redundancia (RDA)
## Análisis discriminante (LDA, QDA)
## Análisis de Multiples Factores (MFA)
