# **Variables y funciones**

## ¿Qué aprenderás?

Es la 

## Creación de Variables

Las variables son espacios virtuales, que puede contener de elementos o estar vacíos. Imagina que en una tabla de datos es un objeto "contenedor de mediciones" de un trabajo de investigación. Dicha tabla puede ser considerada una variable u objeto en R. Más adelante se hablará sobre los tipos de variables que existen en R.

Una forma sencilla de comenzar con variables es guardar un valor numérica en la memoria de trabajo de RStudio, también llamado ambiente (pestaña _Environment_). En este sentido, se necesita _asignar_ el contenido a un nombre para que RStudio lo "recuerde", haciendo uso de un **operador de asignación** `<-`. Para crear una variable llamada NUM conteniendo el número 2022.


```r
NUM <- 2022
```

Si se desea **ver el contenido de una variable** previamente guardada en el ambiente, basta con ejecutar el nombre d ela variable:


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

Una versión frecuentemente usada en ejemplos de R, involucra **colocar a la asignación entre paréntesis** para que hacer dos cosas a la vez: guardar la variable en el ambiente y mostrar su contenido en la consola.


```r
(NUM <- 2022)
```

```
## [1] 2022
```

Existe la posibilidad de asignar con un **operador de asignación inverso** `->`. Toma en cuenta qué debe ir en la cola (contenido) y en la cabeza (nombre) del operador. En otras palabras, la "flecha" que se forma con este operador siempre apunta al futuro nombre de la variable. Recuerda, la variable no existe hasta que no se ejecute y aparezca dicho nombre en el ambiente de RStudio.


```r
# Operador de asignación inverso
2022 -> NUM
```

El símbolo `=` también funciona, pero, por convención, este **no se debe usar para crear variables**. Se usará dentro de las funciones para "asignar" contenido a los argumentos de las mismas (se explicará a continuación).


```r
# Mal uso del símbolo =
NUM = 2022

# Buen uso del símbolo = : siempre dentro de una función.
# Calcular el logaritmo en base 2 de 10
bs <- 2 + 8
log(10, base = bs)
```

```
## [1] 1
```


\BeginKnitrBlock{rstudio-tip}<div class="rstudio-tip">Ciertamente, en el ejemplo anterior no fue esencial guardar la variable `bs` en el ambiente para su uso posterior dentro de `log()`. Sabemos de antemano que la suma es `10`. No obstante, este ejemplo nos da idea de como aplicar el guardar un resultado para usarlo luego en ejercicios más complejos.</div>\EndKnitrBlock{rstudio-tip}

No es posible continuar hablando de variables sin antes hacer una introducción a las funciones en R. 

## Funciones

### ¿Qué son las funciones?

Se puede idealizar una función como una secuencia de órdenes (líneas de código) que tienen como objetivo aplicarle un procedimiento (gráfico, estadístico, de modificación o transformación, entre otros) a un objeto de entrada (input) para generar un resultado (ouput). Dichas líneas de código están empaquetadas y almacenadas con un nombre. 

Reconocer una función en R es tarea sencilla, siempre será un **nombre seguido de paréntesis**. Por ejemplo, la función para calcular la desviación estándar de un conjunto de datos es `sd()`, que proviene del inglés _standard deviation_. Dentro de los paréntesis se deben colocar los **argumentos** de la función. El argumento más sencillo que algunas funciones necesitan es un conjunto de datos, y es justamente lo único que necesita `sd()`.


```r
# Para crear un conjunto de datos en R se usa la función c()
x <- c(7,9,3,4,5,3,7,8)

# Usando sd() para hallar la desviación estándar de x
sd(x)
```

```
## [1] 2.31455
```

Si se ejecuta únicamente el nombre de una función existente en RStudio, en la consola se mostrará el contenido de la misma, la secuencia de órdenes que le dan forma a la función. Ejecuta el `sd` para ver su contenido:


```r
sd
```

```
## function (x, na.rm = FALSE) 
## sqrt(var(if (is.vector(x) || is.factor(x)) x else as.double(x), 
##     na.rm = na.rm))
## <bytecode: 0x0000000018193310>
## <environment: namespace:stats>
```

La secuencia de órdenes dentro de `sd` es corta. Básicamente utiliza la función `sqrt()` para sacarle la raíz cuadrada a la función `var()`, esta última calcula la varianza de un conjunto de datos. La estructura del código es propiamente la fórmula matemática para el cálculo de la desviación estándar. Aunque, a decir verdades, el código luce más complejo, y es debido a que aquí la función `var()` contiene argumentos condicionales para pedir que evalúe si el objeto `x` es correcto para la función, o si se necesita un cambio antes de procesar`x` en `sd()`. Pierde cuidado si no se entiende mucho por ahora, no es necesario comprender las funciones a este nivel al iniciar con R.

### Creación de funciones 

La gran comunidad de desarrollo detrás de R ha creado una infinidad de funciones, almacenados en los miles de paquetes, o librerías, disponibles en el repositorio oficial `CRAN` y otras fuentes (ver sección [Librerías y repositorios](#librerías-y-repositorios). No obstante, algunas veces se necesita crear funciones personalizadas a los requerimientos del usuario. 

Cuando se detecta que algunas secuencias de órdenes se suelen repetir en el código, crear una función que empaquete dicha secuencia permitirá
_automatizar procedimientos y simplificar el código_. Como regla general, si copias y pegas una secuencia de órdenes para usarla más de 2 veces, ya se debería pensar en crear una función que compile la tarea. 

\BeginKnitrBlock{rmdnote}<div class="rmdnote">**Crear un función involucra los siguientes pasos:**

1. Darle un nombre. Crear una función es como crear una variable: hay que asignarle un contenido a un nombre.
2. Luego de escribir el nombre, se tiene que usar la función llamada `function()`para indicar qué argumentos tendrá la nueva función.
3. Definir el contenido de la función, la secuencia de órdenes, dentro de corchetes. Dentro de ellos se usarán los argumentos establecidos en `function()`.</div>\EndKnitrBlock{rmdnote}

Para **crear una función** que le sume 100 a un número, se puede usar:


```r
# Esta función admitirá como objeto de entrada un 
# valor x, definido en function(), para sumarle 100
mi.fun <- function(x){
  x+100
}

# Usando mi.fun() con 10
mi.fun(10)
```

```
## [1] 110
```

Para recrear la famosa función de [Carl Friedrich Gauss](https://es.wikipedia.org/wiki/Carl_Friedrich_Gauss) para calcular la suma de todos los números dentro de un rango numérico, usaremos la fórmula matemática:

$$ k = \frac{n * ( n + 1 )}{2} $$


```r
k.Gauss <- function(n) {
  (n * (n+1))/2
}

k.Gauss(100)
```

```
## [1] 5050
```

Adicionalmente, se puede **predefinir valores por defecto** en `function()`, mismos que se podrán modificar al usar la función ya creada.


```r
# Esta función hallará el logaritmo con base 2 
# (por defecto) de la función matemática de Gauss
log.Gauss <- function(n, base = 2) {
  resultado.Gauss <- (n * (n+1))/2
  logaritmo <- log(resultado.Gauss, base=base)
  print(logaritmo)
}

# Aplicando la función al valor 100
log.Gauss(100)
```

```
## [1] 12.30207
```

Como es notorio, se pueden **crear variables dentro de una función**, pero estas serán temporales. Una vez se imprime el resultado en consola, la variable desaparece. Para que algún paso realizado dentro de la función se guarde como una variable permanentemente en el ambiente, usa el símbolo especial `<<-`.


```r
# Se guardará resultado.Gauss en la consola
log.Gauss <- function(n, base = 2) {
  resultado.Gauss <<- (n * (n+1))/2
  logaritmo <- log(resultado.Gauss, base=base)
  print(logaritmo)
}

# Aplicando la función al valor 100
log.Gauss(100)
```

```
## [1] 12.30207
```

```r
# Mostrando el objeto que se creó automáticamente
# en el ambiente tras ejecutar log.Gauss()
print(resultado.Gauss)
```

```
## [1] 5050
```

## Clasificación de variables

Toda variable cuenta con dos atributos: clase y estructura. Para entender cómo se almacenan los datos en R, se necesita conocerlas a detalle.

(ref:gatocaja) Analogía del gato en la caja para entender a las variables. Aquí, el gato es el contenido; la caja, la estructura. Esta "variable" puede ser de la clase "contenedora de gatos" y estructura "cartón". Así mismo, habrán variables contenedoras de números, de caracteres, de valores lógicos, y estos estarán ordenados de diferente manera.  

<div class="figure" style="text-align: center">
<img src="figs/02_funciones_variables_files/gatobox.jpg" alt="(ref:gatocaja)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-15)(ref:gatocaja)</p>
</div>
<br>


### Clases atómicas

Según su contenido, en R existen **seis clases básicas (o atómicas) de variables**:

- **tipo lógica:** identificado con el nombre `logical`
- **tipo caracter o texto:** identificado con el nombre `character`
- **tipo número con decimales:** conocidos como _doubles_, identificado con el nombre `numeric`
- **tipo número entero:** identificado con el nombre `integer`
- **tipo número complejo:** identificado con el nombre `complex`
- **tipo crudo o en bits:** identificado con el nombre `raw`

De estos, los últimos tres no serán utilizando a lo largo de este libro. Quizá surja la pregunta de por qué no usar números enteros. En realidad una variable del tipo `numeric` ya incluye enteros y con decimales (es decir, todos los números reales). Para efectos de una gran cantidad de funciones estadísticas, en R no es relevante brindarle números enteros como `integer`, o diferenciarlos de `numeric`.

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
