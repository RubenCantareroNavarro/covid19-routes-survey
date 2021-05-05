# https://r-coder.com/boxplot-en-r/
# https://conceptosclaros.com/como-ser-mas-rapido-boxplot-estadistica-descriptiva-parte2/

library(readxl)

data <- read_excel("/home/ruben/repos/covid19-routes-survey/ciudad-real/results/validation_survey_summary_esp.xlsx")

# Danger points
x = as.numeric(data$survey_number_danger_points)
y = data$case_id

#boxplot(x ~ y, xlab = "Case number", ylab = "Danger points")
boxplot(x ~ y, xlab = "Número de caso", ylab = "Puntos peligrosos")



# Distancia
x = as.numeric(data$survey_route_length)
y = data$case_id

boxplot(x ~ y, xlab = "Número de caso", ylab = "Distancia (m)")



# General
x = as.numeric(data$survey_number_danger_points)
y = data$case_id

# boxplot(x, xlab = "Todos los casos", ylab = "Puntos peligrosos")
boxplot(x, xlab = "All cases", ylab = "Danger points")



# Knowledge of the city
x = as.numeric(data$survey_number_danger_points)
y = data$knowledge_city_level

boxplot(x ~ y, xlab = "Knowledge of the city", ylab = "Danger points")
t.test(x ~ y)

# Age
x = as.numeric(data$survey_number_danger_points)
y = data$age

boxplot(x ~ y, xlab = "Age", ylab = "Danger points")
t.test(x ~ y)
