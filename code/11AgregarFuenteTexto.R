



# Link: https://github.com/juanlastra/Visuales-con-ggplot2/tree/main

# Cambiar fuentes de texto: https://cran.rstudio.com/web/packages/showtext/vignettes/introduction.html





library(ggplot2)
library(dplyr)

# Para la fuente de texto
library(showtext)




Data11 <- iris %>% 
  group_by(Species) %>% 
  summarise(Total = sum(Petal.Width))


Data11 %>% 
  ggplot(
    data = .
  ) + 
  geom_bar(
    mapping = aes(x = Species, y = Total)
    , stat = "identity"
  ) + 
  theme_bw()


# Cambiar fuente de texto en ggplot
#-----------------------------------

# Descargar la fuente Gudea
font_add_google(family="Gudea", "Gudea", db_cache = TRUE)
fpath <- systemfonts::font_info(family = "Font Awesome 6 Brands")[["path"]]
font_add(family = "fa-brands", regular = fpath)
showtext_auto(enable = TRUE)



# Agregar el texto al gráfico
#-----------------------------
Data11 %>% 
  ggplot(
    data = .
  ) + 
  geom_bar(
    mapping = aes(x = Species, y = Total)
    , stat = "identity"
  ) + 
  theme_bw(
    base_family = "Gudea"
    , base_size = 20
  )


############################################
# Cambiar otro estilo
# Link de Fuentes: https://fonts.google.com/
#############################################

font_add_google(family="Smooch", "Smooch", db_cache = TRUE)
fpath <- systemfonts::font_info(family = "Font Awesome 6 Brands")[["path"]]
font_add(family = "fa-brands", regular = fpath)
showtext_auto(enable = TRUE)


Data11 %>% 
  ggplot(
    data = .
  ) + 
  geom_bar(
    mapping = aes(x = Species, y = Total)
    , stat = "identity"
  ) + 
  theme(
    text = element_text(size = 16, family = "Smooch")
  )
  theme_bw(
    base_family = "Smooch"
    , base_size = 20
  )



# 2.


font_add_google(family="Righteous", "Righteous", db_cache = TRUE)
fpath <- systemfonts::font_info(family = "Font Awesome 6 Brands")[["path"]]
font_add(family = "fa-brands", regular = fpath)
showtext_auto(enable = TRUE)


Data11 %>% 
  ggplot(
    data = .
  ) + 
  geom_bar(
    mapping = aes(x = Species, y = Total)
    , stat = "identity"
  ) + 
  theme_bw(
    base_family = "Righteous"
    , base_size = 20
  )


ggsave("C:/Users/josec/OneDrive/Desktop/CodigosR/112CambiarFuenteTextoGgplot/11AgregarFuenteTexto.png", height = 4, width = 3, dpi = 500)

