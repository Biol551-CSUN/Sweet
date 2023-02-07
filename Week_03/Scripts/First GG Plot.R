### This is my first gg plot
### Created by Rachel Sweet on 02/07/2023
library(tidyverse)
library(palmerpenguins)
ggplot(data=penguins,
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     color = species,
                     size = body_mass_g,
                     alpha = flipper_length_mm,
                     shape = island))+
  geom_point()+
   labs(title = "bill depth and length",
        subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
        x = "Bill depth (mm)", y = "Bill length (mm)",
        color = "Species",
        caption = "Source: Palmer Station LTER / palmerpenguins package")+
  scale_color_viridis_d()+
  facet_grid(species~sex)+
  facet_grid(sex~species)+
  facet_wrap(~ species)+
  facet_wrap(~species, ncol=2)+ #make it 2 columns
  guides(color = FALSE)
