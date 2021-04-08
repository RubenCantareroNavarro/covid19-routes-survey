# https://bookdown.org/jboscomendoza/r-principiantes4/histogramas.html
# https://estadistica-dma.ulpgc.es/cursoR4ULPGC/9c-grafHistograma.html
# http://matepedia-estadistica.blogspot.com/2016/05/histograma-con-frecuencia-relativa.html

library(readxl)
case_1_summary <- read_excel("/home/ruben/Escritorio/caso_1.xlsx")
#View(case_1_summary)

x = as.numeric(case_1_summary$survey_number_danger_points)


# hist(x, freq=FALSE, col="lightcyan", main = NULL, xlab = "Danger points", ylab = "Frecuency", breaks = 14)
hist(x, freq=FALSE, col="lightcyan", main = NULL, xlab = "Danger points", ylab = "Frecuency", breaks = c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80), ylim=c(0,0.05))


lines(density(x),col="red",lwd=2)

curve(dnorm(x, 
            mean=mean(x), 
            sd=sd(x)), 
      add=TRUE, col="green") 


