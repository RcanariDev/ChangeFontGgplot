# Change font name in ggplot


## 1. Seleccionar fuente: https://fonts.google.com/

```
library(showtext)
```


```
font_add_google(family="Smooch", "Smooch", db_cache = TRUE)
fpath <- systemfonts::font_info(family = "Font Awesome 6 Brands")[["path"]]
font_add(family = "fa-brands", regular = fpath)
showtext_auto(enable = TRUE)
```


<br />
<br />

## 2. Aplicarlo






- Sin tema


```
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
```


- Con un tema definido
```
Data11 %>% 
  ggplot(
    data = .
  ) + 
  geom_bar(
    mapping = aes(x = Species, y = Total)
    , stat = "identity"
  ) + 
  theme_bw(
    base_family = "Smooch"
    , base_size = 20
  )
```


