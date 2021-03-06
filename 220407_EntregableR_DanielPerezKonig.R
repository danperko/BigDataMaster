#PARTE 1 Ejercicios

getwd()
setwd("C:/Users/danny/AADirVit")
data <- read.csv("t607/income_internet.csv", stringsAsFactors = T)

#1.1 �Cu�ntos niveles tiene la columna Income?

str(data)
length(levels(data$Income.Group))
length((unique(data$Income.Group, incomparables = FALSE, fromLast = FALSE, nmax = NA)))

#1.2 �C�mo se distribuyen los paises en base a sus ingresos?

GroupPerc <- c()
for (lev in levels(data$Income.Group)){
  print(lev)
  GroupPerc <- append(GroupPerc,length(data$Income.Group[data$Income.Group==lev])/length(data$Income.Group)*100)
  print(length(data$Income.Group[data$Income.Group==lev])/length(data$Income.Group)*100)
}
GroupPerc



GroupPerc <- c()
for (lev in levels(data$Income.Group)){
  print(lev)
  GroupPerc <- append(GroupPerc,nrow(data$Income.Group[data$Income.Group==lev])/nrow(data$Income.Group)*100)
  print(nrow(data$Income.Group[data$Income.Group==lev])/nrow(data$Income.Group)*100)
}
GroupPerc



#1.3 Graficar el punto 2

library(ggplot2)

barplot(GroupPerc,
        main = "Group Percentage",
        xlab = "Income Group",
        ylab = "% of Total",
        names.arg = levels(data$Income.Group),
        col = "darkred",
        horiz = F)

pie(GroupPerc, labels = levels(data$Income.Group), main="Group Percentage")

#1.4 �C�al de los pa�ses tiene un mayor uso de internet?

data[data$Internet.users == max(data$Internet.users),]

#1.5 Obtener el pa�s con la tasa de nacimientos m�s alta

data[data$Birth.rate == max(data$Birth.rate),]

#1.6 El pa�s del punto 4 �A qu� nivel de ingresos pertenece?

data$Income.Group[data$Internet.users == max(data$Internet.users)]

#1.7 Obtener el valor de correlaci�n entre nacimientos/internet

cor(data$Birth.rate, data$Internet.users)

cor(data$Birth.rate, data$Internet.users)

#1.8 Graficar utilizando qplot e indicar a cada nivel de ingresos un color

#Un Color
qplot(data=data, x=Birth.rate, y=Internet.users, 
      color=I("Green"),
      size=I(3)
      )
#Un Color por Grupo de Ingreso
qplot(data=data, x=Birth.rate, y=Internet.users, 
      color=Income.Group,
      size=I(3)
)



#PARTE 2 Countries vectors

data <- read.csv("t607/income_internet.csv", stringsAsFactors = T)

#2.1 Crear un dataframe con los vectores proporcionados
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

regions<-data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)

#2.2 Unir el nuevo dataframe del punto 1 con el dataframe de los puntos anteriores
result<-merge(data, regions, by.x="Country.Code",by.y="Codes_2012_Dataset")

#Eliminar columna sobrante
#Op.1
result<-result[,-6]
#Op.2
result[,6]<-NULL

#2.3 Ordenar las regiones en base a su acceso a internet

result[order(result$Regions_2012_Dataset,-result$Internet.users),]

#2.4 Ordenar las regiones en base a su tasa de nacimiento

result[order(result$Regions_2012_Dataset,-result$Birth.date),]

#2.5 Graficar con qplot y dar a cada regi�n un color
qplot(data=result, x=Regions_2012_Dataset, y=Birth.rate, 
      color=Regions_2012_Dataset,
      size=I(3)
)



