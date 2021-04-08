# https://r-coder.com/boxplot-en-r/
# https://conceptosclaros.com/como-ser-mas-rapido-boxplot-estadistica-descriptiva-parte2/

library(readxl)

data <- read_excel("/home/ruben/Escritorio/validation_survey_summary.xlsx")

# Danger points
x = as.numeric(data$survey_number_danger_points)
y = data$case_id

boxplot(x ~ y, xlab = "Case number", ylab = "Danger points")



# Distancia
x = as.numeric(data$survey_route_length)
y = data$case_id

boxplot(x ~ y, xlab = "Case number", ylab = "Danger points")



# General
x = as.numeric(data$survey_number_danger_points)
y = data$case_id

boxplot(x, xlab = "Case number")
