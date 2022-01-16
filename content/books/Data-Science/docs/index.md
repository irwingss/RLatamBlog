--- 
title: "Estadística y Análisis de Datos para Ciencias, con Aplicaciones en R"
author: "Irwing S. Saldaña"
github-repo: irwingss/libro-eadc
description: "Este es el libro del programa de Ciencia de Datos elaborado por mi persona en el Instituto de Ciencias Antonio Brack"
date: "2022-01-16"
site: bookdown::bookdown_site
output: bookdown::bs4_book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
colorlinks: yes
graphics: yes
lot: yes
lof: yes
fontsize: 11pt
mainfont: Open Sans
monofont: "Source Code Pro"
monofontoptions: "Scale=0.8"
cover-image: Cover/cover.png
---



# **Bienvenida** {-}

<a href="https://www.brackinstitute.com"><img src="Cover/cover.png" width="304" height="398" alt="Cover image" align="right" style="margin: 0 0 1em 1em;" /></a> 

Esta es la versión en página web del libro "Estadística y Análisis de Datos para Ciencias, con Aplicaciones en R", publicado por [IC PRESS](https://www.brackinstitute.com/editorial), Fondo Editorial del Instituto de Ciencias Antonio Brack. Esta página web contiene el manuscrito completo del autor antes de la edición final de su publicación en PDF. Si desea solicitar una copia del libro electrónico, puede hacerlo a través de Amazon, Google Play o el propio Fondo Editorial del Instituto.

Este libro está desarrollado en base al programa "Data Science: Estadística y Análisis de Datos con R", un conglomerado de cinco cursos dictados en el ´[Instituto de Ciencias Antonio Brack](https://www.brackinstitute.com/) a través de la plataforma educativa online [masterX](https://www.masterx.org/). De igual manera, el libro sirve de soporte tanto para los estudiantes del programa o para aquellos que busquen un libro de referencia con el cual seguir sus estudios autodidactas.

Este libro ha sido completamente escrito en R Markdown, utilizando RStudio. Si tienes alguna sugerencia, o detectas algún fallo ortográfico, o error de forma o de fondo, por favor enviar un mensaje a `isaldanau@gmail.com` con el asunto de correo "Corrección Libro Estadística" .


Esta página web es de **libre uso** dentro de los términos autorizados bajo la [Licencia Internacional Reconocimiento No Comercial - Sin Derivadas 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode). Además, esta obra utiliza un [Código de conducta para colaboradores](https://www.contributor-covenant.org/version/2/0/code_of_conduct/). Al contribuir a este libro, acepta cumplir sus términos. Finalmente, esta obra está alojada en [Netlify](https://www.netlify.com), con código abierto disponible en [Github](https://github.com/irwingss/libro-eadc).

## ¿Cómo usar el libro? {-}

Este libro busca llegar de manera sencilla al lector, por lo que se ha preferido resaltar ciertos contenidos como:

\BeginKnitrBlock{rmdnote}<div class="rmdnote">**NOTAS SOBRE EL CÓDIGO:** brindan ayuda en el código, sugerencias o alternativas para escribir de manera más sencilla y clara.</div>\EndKnitrBlock{rmdnote}

\BeginKnitrBlock{rstudio-tip}<div class="rstudio-tip">**COMENTARIOS:** con aclaraciones y mensajes que ayudarán a entender mejor lo explicado.</div>\EndKnitrBlock{rstudio-tip}

\BeginKnitrBlock{rmdwarning}<div class="rmdwarning">**ADVERTENCIAS:** de índole metodológica, aplicativa, o incluso sobre alguna particularidad del código.</div>\EndKnitrBlock{rmdwarning}

# **Prefacio** {-}

## ¿Por qué R para estadística? {-}

La estadística está presente en casi todas las ciencias. Tanto seas un científico, un analista, un médico, un consultor de biodiversidad, un ingeniero, un psicólogo, o un estudiante universitario, saber cómo analizar datos te abrirá muchas puertas a oportunidades grandiosas. En este sentido, la programación a arribado para quedarse en distintos campos de las ciencias. Inclusive, muchos expertos a nivel mundial están de acuerdo con que el no saber programar es el nuevo analfabetismo _del futuro_ que parece ya ser _del ahora_ (e.g. un post de [Harvard University](https://scholar.harvard.edu/nikitaroy/blog/coding-new-literacy)). 

En este nuevo paradigma, los profesionales estamos inmersos en la necesidad de actualizar nuestro bagaje de conocimentos, incluyendo al menos un lenguaje de programación orientado a sus necesidades académicas, de investigación o educativas. Diversos lenguajes de programación son atractivos para investigadores y profesionales, pero ninguno esta tan orientado al desarrollo estadístico como R. Otras opciones populares son Python, MATLAB, C, C++, JavaScript, SQL, Scala, Julia, SAS.

R es uno de los lenguajes más populares para ciencia de datos, siendo considerado uno de los más sencillos de aprender. R ofrece un gran ambiente para desarrollo estadístico y gráfico. Con él se puede desarrollar con simpleza estadística, ciencia de datos, big dada, machine learning, y actualmente, gracias a la vinculación con python a través de la librería `reticulate` y a la adaptación de librerías de Python a R , es posible aplicar con más soltura procedimientos tan complejos como el deep learning. 

Entre las cosas más interesantes de R se encuentra la amplia comunidad de desarrollo que lo respalda, con paquetes y soporte técnico libre y abierto en plataformas como [StackOverflow](https://stackoverflow.com/), [RStudio Community](https://community.rstudio.com/), [R-Bloggers](https://www.r-bloggers.com/), además de repositorios en la nube como [GitHub](https://github.com/), [GitLab](https://gitlab.com/) o [Bioconductor](https://www.bioconductor.org/).

## ¿A quién está dirigido este libro? {-}

Este libro está dedicado a llevarte desde cero en el manejo del lenguaje de programación R, y su posterior aplicación en tópicos estadísticos también a partir de nivel básico. Los capítulos de este libro están diseñados para ser independientes entre sí. Siéntete libre de saltar entre los capítulos y seleccionar aquellos que sean de tu interés en el momento. 

La progresión temática está adaptada a la secuencia del programa de cinco cursos [Data Science: Estadística y Análisis de Datos en R](https://www.masterx.org/bundle/data-science-r), ofrecido por el autor del libro, [Irwing S. Saldaña](https://github.com/irwingss), a través del [Instituto de Ciencias Antonio Brack](https://www.brackinstitute.com/). El programa comenzó a ser dictado en 2020, y ha recibido a estudiantes de diferentes partes de Latinoamérica, El Caribe y España, así como de diversos perfiles profesionales. Entre ellos: biólogos, médicos y otros profesionales de la salud, ingenieros, psicólogos, entre otros; además, profesionales de otras ramas no tan afines a las ciencias, como economistas, tecnólogos o especialistas en finanzas, que vieron en el programa una oportunidad de ampliar su gama de herramientas de análisis estadístico y poder aplicar novedosos métodos a sus propias áreas de investigación.

## Agradecimientos {-}

<span style="color:red;">**FALTA**</span>

# **Prerrequisitos** {-}

El desarrollo del libro es independiente del sistema operativo que maneja el estudiante. No obstante, hay ciertas incompatibilidades o dificultades de uso para algunos pocos paquetes con Linux y macOS que en su momento serán comentados. La ejecución de todos los códigos del libro se han realizado utilizando el sistema operativo Windows 11. Se sugiere el uso del entorno RStudio por la versatilidad de uso, pero puedes usar el editor de código de tu preferencia.

Se deberá utilizar **las versiones listadas (o posteriores)** de los programas siguientes según el sistema operativo recomendado:

#### Para windows: {-}

- R version 4.1.2 (2021-11-01) -- "Bird Hippie" [Descarga](https://cran.r-project.org/bin/windows/base/R-4.1.2-win.exe)
- RStudio Desktop 2021.09.1+372 [Descarga](https://download1.rstudio.org/desktop/windows/RStudio-2021.09.1-372.exe)
- Rtools4.0 [Descarga](https://cran.r-project.org/bin/windows/Rtools/rtools40v2-x86_64.exe)

#### Para macOS: {-}

- R version 4.1.2 (2021-11-01) -- "Bird Hippie" [Descarga](https://cran.r-project.org/bin/macosx/base/R-4.1.2.pkg)
- RStudio Desktop 2021.09.1+372 [Descarga](https://download1.rstudio.org/desktop/macos/RStudio-2021.09.1-372.dmg)
- XQuartz 2.8.1. [Descarga](https://github.com/XQuartz/XQuartz/releases/download/XQuartz-2.8.1/XQuartz-2.8.1.dmg)


\BeginKnitrBlock{rmdwarning }<div class="rmdwarning ">**Requerimientos mínimos del sistema para ejecutar RStudio:**

- Procesadores de 2 núcleos (equivalente a Intel® Core™ i3 o AMD Ryzen™ 3).
- 4 Gb RAM.
- Espacio en almacenamiento de 100 Gb.

**Requerimientos recomendados del sistema para ejecutar RStudio:**

- Procesadores de 4 a más núcleos (equivalente a Intel® Core™ i5 a más o AMD Ryzen™ 5 a más).
- 8 a más Gb RAM.
- Más de 100 Gb de espacio de almacenamiento.</div>\EndKnitrBlock{rmdwarning }

#### Librerías y bases de datos a utilizar en el libro {-}

Se ha creado un paquete de acompañamiento de este libro, el que se debe instalar ejecutándo el código siguiente. Si no conoces como ejecutar código, puedes revisar la sección [Ejecutar código](#ejecutar-código). ```


El paso a paso será:

1. Abrir RStudio.
2. En el teclado presionar: `Control + shift + N` o `Command + shift + N`. Esto creará un nuevo R script (para más información, revisa: [Tipos de documentos en RStudio](#tipos-de-documentos-en-rstudio)).
3. Copiar en el R script el código mostrado a continuación. 


```r
# Instalar la librería del libro
remotes::install_github("irwingss/rBrack")

# Activar la librería
libraries(rBrack)

# Ejecutar las funciones
instalar_paquetes_cran()
instalar_paquetes_github()

# Actualizar las librerías
update.packages(ask = FALSE)
```

4. Ejecutar el código (para más información, revisa: [Ejecutar código](#ejecutar-código)) hasta la función `instalar_paquetes_github()`.
5. Una vez estén todas las librerías instaladas, se debe ejecutar la última función `update.packages()` para actualizar las que se encuentren desactualizadas.
