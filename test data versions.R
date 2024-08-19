


PH_Inspections_data_dotgov_27JUN2023 <- read_excel("PH_Inspections_data_dotgov_27JUN2023.xlsx") %>% 
  filter(`PHA Code` == "NY005")
PH_UPCSInspections_Data_dotgov_19APR2024 <- read_excel("PH_UPCSInspections_Data_dotgov_19APR2024.xlsx") %>% 
  filter(`PHA Code` == "NY005")

test <- full_join(PH_Inspections_data_dotgov_27JUN2023, PH_UPCSInspections_Data_dotgov_19APR2024, by = c("Inspection ID"="UPCS Inspection ID"))
