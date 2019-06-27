---
layout: lesson
root: .  # Is the only page that doesn't follow the pattern /:path/index.html
permalink: index.html  # Is the only page that doesn't follow the pattern /:path/index.html
---


This lesson aims to develop useful and general data skills in R/tidyverse with a biology focus:

* Finding, downloading, and inspecting a public dataset
* Combining information from related tabular datasets
* Plotting data with many measurements from many samples (scatter, line, heatmap)
* Summarizing data

The story is based around a common situation in transcriptomic analysis. We are interested in a group of genes, and a published study has measured expression in conditions where expression of mRNA these genes might be interesting.

* Can we reproduce figures in the paper as a reality check?
* Can we tell if our favourite genes have changing expression?
* Can we compare results from multiple datasets?

The example dataset measures gene expression by ribosome profiling in a model of cell growth and division in yeast: *Translational control of lipogenic enzymes in the cell cycle of synchronous, growing yeast cells.* [Blank et al 2017](https://doi.org/10.15252/embj.201695050).

We use tools from the [tidyverse][tidyverse], which provides efficient and consistent tools for data wrangling, processing, and plotting.

<!-- this is an html comment -->

{% comment %} This is a comment in Liquid {% endcomment %}

> ## Prerequisites
>
> FIXME
{: .prereq}

{% include links.md %}

[tidyverse]: [https://www.tidyverse.org/]
