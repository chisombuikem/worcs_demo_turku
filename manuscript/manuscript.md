Demonstration of WORCS UTU
================
31 March, 2026

``` r
res_desc <- descriptives(df)
write.csv(res_desc, "res_desc.csv", row.names = FALSE)
knitr::kable(res_desc[, c("name", "n", "mean", "sd")]) 
```

| name              |   n |       mean |         sd |
|:------------------|----:|-----------:|-----------:|
| species           | 344 |            |            |
| bill_length_mm    | 342 |   43.92193 |   5.459584 |
| bill_depth_mm     | 342 |   17.15117 |   1.974793 |
| flipper_length_mm | 342 |  200.91520 |  14.061714 |
| body_mass_g       | 342 | 4201.75439 | 801.954536 |
| sex               | 333 |            |            |

``` r
mod <- lm(bill_length_mm ~ species, data = df)
res_mod <- summary(mod)
write.csv(res_mod$coefficients, "res_coef.csv", row.names = FALSE)

knitr::kable(res_mod$coefficients, caption = "My regression model coefficients, for a model with $R^2 `r report(res_mod[['r.squared']])`$.")
```

|                  |  Estimate | Std. Error |   t value | Pr(\>\|t\|) |
|:-----------------|----------:|-----------:|----------:|------------:|
| (Intercept)      | 38.791391 |  0.2408694 | 161.04737 |           0 |
| speciesChinstrap | 10.042433 |  0.4322643 |  23.23216 |           0 |
| speciesGentoo    |  8.713487 |  0.3595046 |  24.23749 |           0 |

My regression model coefficients, for a model with
$R^2 `r report(res_mod[['r.squared']])`$.

``` r
#knitr::kable(res_mod[, c("name", "n", "mean", "sd")]) 
```

This manuscript uses the Workflow for Open Reproducible Code in Science
(WORCS version 0.1.2, Van Lissa et al. 2021) to ensure reproducibility
and transparency.

worcs::reproduce()

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-vanlissaWORCSWorkflowOpen2021" class="csl-entry">

Van Lissa, Caspar J., Andreas M. Brandmaier, Loek Brinkman, Anna-Lena
Lamprecht, Aaron Peikert, Marijn E. Struiksma, and Barbara M. I. Vreede.
2021. “WORCS: A Workflow for Open Reproducible Code in Science.” *Data
Science* 4 (1): 29–49. <https://doi.org/10.3233/DS-210031>.

</div>

</div>
