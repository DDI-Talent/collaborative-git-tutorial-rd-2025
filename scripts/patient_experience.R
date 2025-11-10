library(tidyr)
library(dplyr)
library(ggplot2)
data("cms_patient_experience", package = "tidyr")

orgs <- c('TRINITY WEST', 'TRINITY HEALTH', 'REX HOSPITAL INC', 'HOLZER CLINIC LLC')

exp_summary <- cms_patient_experience |>
  filter(facility_name %in% org)

exp_summary

ggplot(exp_summary, aes(prf_rate, facility, fill = measure_cd)) +
  geom_col(position = "dodge")

