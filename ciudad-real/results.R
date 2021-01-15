library(readxl)
case_1_summary <- read_excel("repos/covid19-routes-survey/ciudad-real/case-001/validation_survey_summary.xlsx")
View(case_1_summary)


case_1_data_respondent =  cbind("respondent_route", case_1_summary[2], case_1_summary[7])
names(case_1_data_respondent)[1]<-paste("route_type")
names(case_1_data_respondent)[3]<-paste("danger_points")

case_1_data_system =  cbind("system_route", case_1_summary[2], case_1_summary[9])
names(case_1_data_system)[1]<-paste("route_type")
names(case_1_data_system)[3]<-paste("danger_points")

merge = rbind(case_1_data_respondent, case_1_data_system)


test = cbind(merge[1], merge[3])

library(ggpubr)
# El diagrama de error con el IC de la media de dos factores
ggline(test, x = names(test)[1], y = names(test)[2], 
       add = c("mean_ci", "jitter"),
       palette = "jco")+
  ggtitle("Titulo del grafico")