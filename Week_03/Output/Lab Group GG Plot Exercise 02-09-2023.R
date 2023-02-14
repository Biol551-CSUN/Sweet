### Today we are going to plot penguin data ###
### Created by: Rachel Sweet ###
### Updated on 02-09-2023 ###

### Load libraries ###
library(palmerpenguins)
library(tidyverse)
library(here)
### Load data ###
### Lab group plot ###
ggplot(data=penguins,
       mapping = aes(x = body_mass_g, fill = island)) +
  geom_histogram(col = I("black")) +
  labs(x = "Body mass (g)",
       y = "Count",
       fill = "Island") +
  theme_bw() +
  theme(axis.title = element_text(size = 14,
                                  color = "black"),
        panel.grid = element_line(color = "lightgrey"),
        panel.background = element_rect(fill = "beige"),
        legend.key = element_rect(fill = "beige"),
        plot.title = element_text(size = 15, hjust = 0.5, face = "bold")) +
        ggtitle("Body Mass in Penguins Grouped by Islands") +
  scale_fill_brewer(palette="Accent")
       
       