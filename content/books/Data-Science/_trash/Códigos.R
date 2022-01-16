# RMARKDOWN ESENCIALES

----------------------- ------------------------------------
  ![Tip](Cover/cover.png)\ Table multiline text bla bla bla bla
bla bla bla bla bla bla bla ... the
blank line below is important

----------------------------------------------------------------
  render_book(input = ".", output_format = 'bookdown::gitbook', clean = TRUE,
              envir = parent.frame(), clean_envir = !interactive(),
              output_dir = NULL, new_session = NA, preview = FALSE,
              config_file = "_bookdown.yml")

bookdown::render_book("index.Rmd", "bookdown::gitbook")
?bookdown::render_book
bookdown::render_book("index.Rmd")
bookdown::render_book("index.Rmd", "bookdown::bs4_book")

Photo by <a href="https://unsplash.com/@abrkett?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Adam Birkett</a> on <a href="https://unsplash.com/s/photos/black-and-white?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>

  \@ref(prerequisitos)

# BLOQUES DE COMENTARIOS, ADVERTENCIAS O DATO R
```{block2, type='rmdnote'}
NOTAS SOBRE EL CÓDIGO
```

```{block2, type='rstudio-tip'}
COMENTARIOS
```

```{block2, type='rmdwarning'}
ADVERTENCIAS
```
