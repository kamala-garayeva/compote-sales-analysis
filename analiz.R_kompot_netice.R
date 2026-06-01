> kompot=subset(data,data$mehsul_kateqoriya=="Kompotlar")
> View(kompot)
> attach(kompot)
> library(tidyverse)
── Attaching core tidyverse packages ───────────────────────────────────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.2.0     ✔ purrr     1.2.1
✔ forcats   1.0.1     ✔ stringr   1.6.0
✔ ggplot2   4.0.2     ✔ tibble    3.3.1
✔ lubridate 1.9.5     ✔ tidyr     1.3.2
── Conflicts ─────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors
> netice=kompot %>% group_by(mehsul_ad,mehsul_qiymet) %>% summarise(satish_sayi=n())
`summarise()` has regrouped the output.
ℹ Summaries were computed grouped by mehsul_ad and mehsul_qiymet.
ℹ Output is grouped by mehsul_ad.
ℹ Use `summarise(.groups = "drop_last")` to silence this message.
ℹ Use `summarise(.by = c(mehsul_ad, mehsul_qiymet))` for per-operation grouping instead.
> write.csv(netice, "kompot_netice.csv", row.names = FALSE)