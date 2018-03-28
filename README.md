# carrots

A reduced version of the carrots dataset which is distributed with the [lmerTest](https://cran.r-project.org/web/packages/lmerTest/index.html) package. The reduced dataset includes data from all 103 consumers included in the original dataset, but preference scores are only reported for 6 of the 12 Danish carrot types. The other columns retained from the original dataset are consumer rating of carrot sweetness, bitterness, and crispiness; the frequency at which each consumer consumed carrots; and the age, sex, income, and employment categories the consumers fell into.

The data are provided in two formats: 

1. Wide format (`carrots`), where the three carrot attribute ratings (sweetness, bitterness, and crispiness) are reported in separate columns;  

2. Long format (`long_carrots`), where the three carrot attribute rating columns have been gathered into an _'Attributes'_ column and an _'Attribute_rating'_ column (i.e., key-value pairings).   

## Installation

```
devtools::install_github("kamermanpr/carrots")
```
