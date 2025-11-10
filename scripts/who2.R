library(tidyr)
library(ggplot2)
data("who", package = "tidyr")

country <- filter(who, iso2 == 'NA')

ggplot(country, aes(x = year, y = new_sp_m014)) +
  geom_line() +
  geom_point()

