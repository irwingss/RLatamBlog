# (PART\*) Introducción a R para Ciencias {.unnumbered}

# **Introducción a R básico**

Esta primera sección está enteramente dedicada al desarrollo, manejo y comprensión del lenguaje de programación R (en adelante: "R") en nivel básico. Se asume que el lector tiene instalados y configurados los programas R, RStudio y algún otro programa de soporte para el manejo de paquetes. Si no cuentas con ninguno en tu computadora, visita la sección [Prerequisitos](#prerequisitos) de este libro. 

Una ventaja de los lenguajes de programación es que nos permiten definir una secuencia de análisis adaptada específicamente a nuestro requerimiento analítico. El flujo de trabajo completo queda escrito en el código, y puede ser compartida con colegas cuando se necesite en trabajos colaborativos. Pero antes de aprender sobre los métodos analíticos, se necesita "hablar" bien el lenguaje R. 

Aprenderás a trabajar con el **código básico en R**, a **crear variables**, **funciones**, además de utilizar tidyverse para **manejo y limpieza de bases de datos**. Es esencial manejar estos conceptos antes de trabajar con estadística en R.

## Primer contacto con R

La forma simplificada de cómo funciona R incluye: dar una orden, presionar "enter" para que la computadora comience a procesar la orden, y luego recibir un resultado. Eso es básicamente lo que se hace con cualquier lenguaje de programación. 

R es considerada como una _calculadora con esteroides_ dado que puedes aplicar matemáticas con él; aquella ciencia sobre la que se cimentan las demás. Si puedes hacer ello, tienes las puertas abiertas a aplicar estadística, análisis de diferentes tipos, generar gráficos y todo lo que te imagines. Y pues sí, también hay cosas algo bizarras en R, como poder crear tu propio [calendario](https://r-coder.com/calendarios-r/) o usar [gatitos](https://github.com/R-CoderDotCom/ggcats) en tu gráfico de dispersión de puntos.

A diferencia de los lenguajes humanos (idiomas), un lenguaje de programación debe estar escrito a la perfección. No hay espacio para una coma mal puesta, un paréntesis olvidado, o un nombre mal colocado. La computadora solo ejecutará la orden si todo está escrito exactamente como debe ser. Todos los ejemplos de este libro pueden ser ejecutados correctamente si los escribes tal y como es mostrado. Previo a ello, se debe haber instalado y activado las librerías a usar (para más detalle, revisa la sección [Prerrequisitos](#prerrequisitos)).


## Paneles de RStudio 

Existen diversos editores de código que permiten trabajar con R, pero ninguno con la versatilidad de [RStudio](https://www.rstudio.com/). El programa está dividido en paneles que uno puede reorganizar a conveniencia. Más allá de la posición o el orden de los paneles, es necesario que se sepa reconocerlos por su contenido, las pestañas que contiene, entre otros. Aquí se presentan los paneles en su posición clásica, junto con algunas barras y botones que se deben conocer al iniciar con RStudio. 

(ref:paneles1) Panel de Trabajo. Aquí aparecerán los archivos de trabajo de R, sean R script o R Markdown. Además, es donde aparecen las bases de datos cuando se pide visualizarlas en RStudio.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/Slide1.PNG" alt="(ref:paneles1)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-1)(ref:paneles1)</p>
</div>
<br>

\newpage

(ref:paneles2) Consola. Es el panel donde se imprimen los resultados textuales y numéricos junto con el código que los genera.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/Slide2.PNG" alt="(ref:paneles2)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-2)(ref:paneles2)</p>
</div>
<br>

(ref:paneles3) Panel de Ambiente. Las pestañas de este panel se puede intercambiar o reposicionar a conveniencia con las del Panel Gráfico +. Aquí encontrarás: el ambiente (Environment) donde se guardan los objetos creados o cargados en RStudio; la historia (History) de las ejecuciones realizadas durante la sesión de RStudio; las conexiones (Connections) que se pueden realizar con bases de datos (Oracle, SQL, Salesforce, Spark, Hipe, entre otros); tutoriales (tutorial) precargados usando shiny para el uso básico de R y RStudio.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/Slide3.PNG" alt="(ref:paneles3)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-3)(ref:paneles3)</p>
</div>
<br>

(ref:paneles4) Panel Gráfico +. Contiene las pestañas: archivos (Files) para visualizar los archivos de la carpeta de trabajo actual (definida como la carpeta "documentos" por defecto); la pestaña de visualización de gráficos estáticos (Plots); pestaña de  instalación y actualización de paquetes (Packages); la pestaña de ayuda (Help); y el visualizador (Viewer) de gráficos animados, gráficos 3D, objetos HTML.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/Slide4.PNG" alt="(ref:paneles4)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-4)(ref:paneles4)</p>
</div>
<br>

(ref:paneles6) Barra de opciones rápidas.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/Slide6.PNG" alt="(ref:paneles6)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-5)(ref:paneles6)</p>
</div>

(ref:paneles5) Barra de menús. De las pestañas más importantes: File nos permite crear o cargar archivos; Session, definir espacio de trabajo actual; y Tools, ingresar a las configuraciones de RStudio. Usos más avanzados, como la depuración de código o el uso de versiones de control (Git), también se manejan desde las opciones de esta barra. 

<div class="figure" style="text-align: center">
<img src="figs/intro_files/Slide5.PNG" alt="(ref:paneles5)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-6)(ref:paneles5)</p>
</div>
<br>

## Tipos de documentos en RStudio

Luego de conocer los paneles de RStudio, es necesario crear los espacios donde se escribirán las órdenes a modo de código. Estos documentos, como cualquier editor de texto, se pueden guardar o compartir, por ejemplo, mediante un correo electrónico.

### R Script (.R)
 
Es el documento más simple donde puedo escribir R. Es un editor de texto como el bloc de notas de cualquier sistema operativo. No obstante, este editor lee y colorea la sintaxis especial del código de R. Esto permite identificar cada parte del código según lo que sea: una variable, una función, un número, un texto, símbolos especiales, operadores, entre otros; simplificando enormemente la lectura del código y el aprendizaje de R.

\BeginKnitrBlock{rmdnote}<div class="rmdnote">Puedes crear un R script haciendo clics ([FIGURA 1.7](fig:abrirRscript)), o utilizando el atajo de teclado `Control + shift + N` o `Command + shift + N`. </div>\EndKnitrBlock{rmdnote}

(ref:rscript1) Procedimiento para abrir un documento de RScript usando el menú `File/ New File/ R script`.
 
<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir un Rscript.jpg" alt="(ref:rscript1)" width="100%" />
<p class="caption">(\#fig:abrirRscript)(ref:rscript1)</p>
</div>

 
(ref:rscript2) Apariencia de un R script con código. Notar los colores diferenciales para cada parte del código.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/Rscript.jpg" alt="(ref:rscript2)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-8)(ref:rscript2)</p>
</div>


### R Markdown (.Rmd)

Es un formato de archivo para la creación de documentos dinámicos. Estos pueden ser: páginas web, aplicaciones shiny, diapositivas, o cualquier tipo de reporte que puede ser exportado en formato .docx, .pdf o .html. Utiliza la sintaxis de Markdown pero posibilitando la inclusión de "pedacitos de código", la traducción literal de code chunk. Los chunk se comportan como pequeños R scripts embebidos en el documento de texto plano escrito con sintaxis Markdown. 

Suena extremadamente complejo el decir "sintaxis Markdown", pero no lo es. Una vez uno sabe utilizar R, aprender Markdown resulta sencillo. Puedes aprender a utilizar R Markdown con el libro en línea [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/) en su versión de 2018, o el más actualizado [R Markdown Cookbook](https://bookdown.org/yihui/rmarkdown-cookbook/) de 2020. Ambos libros han sido escritos en colaboración de Yihui Xie, uno de las mentes brillantes de RStudio y a quien le debemos el uso de documentos dinámicos en RStudio. 

No se profundizará en el uso de R Markdown, dado que no es el objetivo del programa, pero se utilizará frecuentemente durante las clases. Si eres un estudiante que no ha está llevando el programa, podrás siempre utilizar tanto R script como R Markdown para ejecutar tus códigos. Se recomienda fuertemente comenzar a utilizar este último dada la ventaja de permitir hacer anotaciones de texto plano como en cualquier editor de texto común. 

(ref:rmarkdown1) Procedimiento para abrir un documento de R Markdown usando el menú `File/ New File/ R Markdown...`.
 
<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir R Markdown 1.jpg" alt="(ref:rmarkdown1)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-9)(ref:rmarkdown1)</p>
</div>

 
(ref:rmarkdown2) Ventana emergente para darle nombre al documento R Markdown.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir R Markdown 2.jpg" alt="(ref:rmarkdown2)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-10)(ref:rmarkdown2)</p>
</div>


(ref:rmarkdown3) Aparecerá un archivo R Markdown con texto de ejemplo para que tengamos una idea de qué se puede hacer con él.
 
<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir R Markdown 3.jpg" alt="(ref:rmarkdown3)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-11)(ref:rmarkdown3)</p>
</div>

(ref:rmarkdown4) `knit` es una función del paquete `knitr`, desarrollado por Yihui Xie y colaboradores, para la generación de reportes dinámicos con R Markdown. Haciendo clic en el botón se despliega la lista de posibles exportaciones del documento. La exportación `Knit to HTML` produce una página web de reporte.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir R Markdown 4.jpg" alt="(ref:rmarkdown4)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-12)(ref:rmarkdown4)</p>
</div>


(ref:rmarkdown5) Tras hacer clic en `Knit to HTML`, será necesario guardar en el almacenamiento de la computadora el documento, cuya extensión es `.Rmd`.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir R Markdown 5.jpg" alt="(ref:rmarkdown5)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-13)(ref:rmarkdown5)</p>
</div>

(ref:rmarkdown6) En la consola, o en una pestaña Render, comenzará a mostrarse la ejecución del código que `knit` desplegó para exportar el R Markdown a página web HTML.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir R Markdown 6.jpg" alt="(ref:rmarkdown6)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-14)(ref:rmarkdown6)</p>
</div>

(ref:rmarkdown7) Vista del archivo HTML generado a partir del R Markdown de ejemplo.

<div class="figure" style="text-align: center">
<img src="figs/intro_files/abrir R Markdown 7.jpg" alt="(ref:rmarkdown7)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-15)(ref:rmarkdown7)</p>
</div>

## Ejecutar código 

¿Alguna vez hiciste un histograma de frecuencias?. Hacer uno de manera exploratoria es muy sencillo en R. El siguiente código hará dos cosas en un solo paso: 

1. Creará un conjunto de 10,000 datos aleatorios que siguen en la distribución normal.
2. Generará el gráfico del histograma de frecuencias utilizando el conjunto previamente creado. 

Por ahora no se ahondará en el detalle de qué cosa es `rnorm()` o `hist()`.


```r
hist(rnorm(10000))
```

<img src="01-Intro_files/figure-html/unnamed-chunk-16-1.png" width="100%" />

Para replicarlo, es necesario escribir el código exacto, para luego dar la orden, es decir, ejecutar el código. La ejecución se hace presionando en el teclado de tu computador `control + enter` o `command + enter` (usuarios macOS).

\BeginKnitrBlock{rmdnote}<div class="rmdnote">Existen otros atajos de teclado para ejecuciones especiales.

- Ejecutar todas las líneas de código del script: `control (o command) + shift + enter`.
- Ejecutar desde el inicio del script hasta la línea actual: `control (o command) + Alt + B`.
- Ejecutar desde la línea actual hasta el final del script: `control (o command) + Alt + E`.

No obstante, no son necesarias. Es suficiente con conocer la ejecución básica, dado que para **ejecutar varias líneas de código a la vez** solo se deben seleccionar las requeridas y ejecutar con  `control + enter` o `command + enter`.</div>\EndKnitrBlock{rmdnote}

Una pregunta que siempre genera confusión es la presencia de unos corchetes `[1]` en los resultados vistos tanto en consola como en este libro. Esto no es parte de un resultado por si mismo, es la posición del elemento mostrado justo a la derecha del corchete. 

Si se ejecuta el símbolo `:` entre dos números, R generará el rango de valores enteros entre dichos números, incluyéndolos.


```r
1:100
```

```
##   [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
##  [19]  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36
##  [37]  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
##  [55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72
##  [73]  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90
##  [91]  91  92  93  94  95  96  97  98  99 100
```

El resultado muestra los confusos `[]` a la izquierda del primer elemento de cada fila del conjunto de datos resultante, indicando su posición dentro de la secuencia de elementos.

## Operaciones aritméticas 

Como ya se había mencionado antes, R nos permite operar con código. La cosa más sencilla para hacer en R es sumar. 


```r
10 + 10
```

```
## [1] 20
```


\BeginKnitrBlock{rstudio-tip}<div class="rstudio-tip">En adelante se visualizará tanto el código a ejecutar (primera línea del ejemplo de suma aquí propuesto) como su resultado textual, mismo que obtendrás en la consola de RStudio (segunda línea del ejemplo) si sigues los pasos de cada ejemplo o ejercicio.</div>\EndKnitrBlock{rstudio-tip}

<br>


Table: (\#tab:unnamed-chunk-21)Operaciones (símbolos) aritméticas en R

Operador   Operación                                 Ejemplo        Resultado
---------  ----------------------------------------  ------------  ----------
`+`        Suma                                      `10 + 3`          13.000
`-`        Resta                                     `10 -  3`          7.000
`*`        Multiplicación                            `10 * 3`          30.000
`/`        División                                  `10 / 3 `          3.333
`^`        Potencia                                  `10 ^ 3 `       1000.000
`%/%`      División entera (parte entera)            `10 %% 3 `         3.000
`%%`       Residuo de dividir un número entre otro   `10 %/% 3 `        1.000

## Funciones matemáticas 

Operaciones más complejas necesitan el uso de **funciones**. Estas son "secuencias de ordenes empaquetadas con un nombre pequeño y recordable" — la información sobre las funciones será desarrollada más adelante ([sección 2.2](#funciones)). En la siguiente tabla se presentan las funciones matemáticas más comunes en R: 


Table: (\#tab:unnamed-chunk-22)Operaciones matemáticas en R. Estos procedimientos matemáticos vienen predefinidos como ordenes denominadas "Funciones"

Operador      Operación                   Ejemplo         Resultado
------------  --------------------------  -------------  ----------
`exp(n)`      Eleva e a la n              `exp(3)`           20.086
`sqrt(n)`     Raíz cuadrada de n          `sqrt(3)`           1.732
`log(n)`      Logaritmo natural de n      `log(3)`            1.099
`log(n, b)`   Logaritmo de n en base b    `log(3, 10)`        0.477
`log10(n)`    Logaritmo de n en base 10   `log10(3)`          0.477
`log1p(n)`    Logaritmo natural de n +1   `log1p(2)`          1.099
`log2(n)`     Logaritmo en base 2         `log2(10)`          3.322
`pi`          Número pi                   `pi`                3.142
`abs(n)`      Convierte n en absoluto     `abs(-10.2)`       10.200

## Comentar el código

Una forma de asegurar que en el futuro el código escrito sea entendible, incluso por nosotros mismos, es comentándolo. Dejar comentarios nos ayudará a recordar la intención con la que se escribió una sección determinada de los comandos.

Para comentar en R, se requiere colocar el símbolo `#` a la izquierda del texto a ser considerado comentario. 


```r
# Esta es una suma 
2 + 2 
```

```
## [1] 4
```

```r
10 * 2 # + 3029
```

```
## [1] 20
```

Como queda en evidencia, no importa si el comentario está en solitario en una línea de código, o si está a la derecha de algo que sí se quiere ejecutar. Esto no afecta el resultado de la operación.
