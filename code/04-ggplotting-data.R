## ----load_packages_data, echo=FALSE, message=FALSE, purl=TRUE----------------------------------------------------
library("tidyverse")

mRNA_data_tidy <- read_csv("../data/mRNA_data_tidy_named.csv")


## ----filter_data_onegene, eval = TRUE, purl = TRUE---------------------------------------------------------------
mRNA_data_NOP16 <- filter(mRNA_data_tidy, Gene=="NOP16")
mRNA_data_NOP16


## ----geom_plot_onegene, eval = TRUE, purl = TRUE-----------------------------------------------------------------
ggplot(data=mRNA_data_NOP16, aes(x=Vol_fL,y=log2_ratio)) +
    geom_point()


## ----geom_line_onegene, eval = TRUE, purl = TRUE-----------------------------------------------------------------
ggplot(data=mRNA_data_NOP16, aes(x=Vol_fL,y=log2_ratio)) +
    geom_line()


## ----geom_line_3genes, eval = TRUE, purl = TRUE------------------------------------------------------------------
mRNA_data_3genes <- filter(mRNA_data_tidy, Gene %in% c("ACT1","NOP16","NOP56"))

ggplot(data=mRNA_data_3genes, aes(x=Vol_fL,y=log2_ratio,colour=Gene)) +
    geom_line()


## ----geom_tile_3genes, eval = TRUE, purl = TRUE------------------------------------------------------------------
ggplot(data=mRNA_data_3genes, aes(x=Vol_fL,y=Gene,fill=log2_ratio)) +
    geom_tile()


## ----geom_tile_3genes_gradient2, eval = TRUE, purl = TRUE--------------------------------------------------------
ggplot(data=mRNA_data_3genes, aes(x=Vol_fL,y=Gene,fill=log2_ratio)) +
    geom_tile() +
    scale_fill_gradient2()


## ----geom_tile_3genes_theme_bw, eval = TRUE, purl = TRUE---------------------------------------------------------
ggplot(data=mRNA_data_3genes, aes(x=Vol_fL,y=Gene,fill=log2_ratio)) +
    geom_tile() +
    scale_fill_gradient2() + 
    theme_bw()


## ---- echo=TRUE, purl=TRUE---------------------------------------------------------------------------------------
mRNA_data_4genes <- filter(mRNA_data_tidy, Gene %in% c("ACT1","NOP16","NOP56","NOP6"))
# ?scale_colour_brewer

