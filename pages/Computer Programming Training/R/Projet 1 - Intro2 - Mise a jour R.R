# tracer un graphe
plot(1:100 , 1:100)

# avoir de l'aide sur une fonction
help("mean")

# Attention: changez le chemin d'acces pour l'adapter à votre cas
setwd("C:/Users/georg/OneDrive/Documents/GitHub/MBalogogGLemuel.github.io/pages/Computer Programming Training/R")

path <- "C:/Users/georg/OneDrive/Documents/GitHub/MBalogogGLemuel.github.io/"

annee <- c(2010:2016)
montant.dollars <- c(55,70,100,20,15)
montant.euros <- montant.dollars*0.66


z = matrix( 0 , nrow = length(montant.dollars) , ncol = 2 )

z[,1] <- montant.dollars
z[,2] <- montant.euros

# Importer les donnees
myData <- read.table( header =FALSE,
  paste(path,"Datasets/ElectricityBill/electricbill.dat.txt", sep = "") , 
  col.names = c("NUM", "YEAR", "MONTH","BILL","TEMP","HDD","CDD","SIZE","METER","PUMP1","PUMP2","RIDER_TOTAL","CONSUMPTION") )

# Analyse exploratoire
str(myData) # ca ressemble a info()
summary(myData) # ca ressemble a describe()

head(myData)
tail(myData)

nrow(myData)
ncol(myData)

attach(myData) # cree automatiquement des objets pour chaque variable

year2 = YEAR -1990
TEMP.CELSIUS = (TEMP-32)/1.8 # Conversion des Fahrenheit en Celsius
head(TEMP.CELSIUS)
head(TEMP)

## Creer un dataframe contenant les colonnes Year, Bill, Consumption
mydata2 = data.frame(YEAR=myData$YEAR , BILL = myData$BILL , CONSUMPTION=myData$CONSUMPTION  )
head(mydata2)

## mise a jour de ce dataframe
mydata2 = data.frame(myData, TEMP.CELSIUS = TEMP.CELSIUS)
head(mydata2)

# Jouer avec les facteurs (yes/no, oui/non, male'femelle)
sex <- c("male", "femelle", "femelle", "male", "male", "femelle")
smoking <- c("yes","no","no","yes","no","yes","no","no","yes","no")

sex.factor = as.factor(sex)
sex.factor

## Exercice final

donnees = data.frame( read.table(
  paste(path, "Datasets/Babyboom/babyboom.dat.txt" ,sep=""),
  col.names = c("Time","Sex","Weight","NoM")))

head(donnees)

nrow(donnees)
ncol(donnees)

str(donnees)

donnees[1:6,]

donnees[,1:2]

donnees[5,]

PoidsLivre =  donnees$Weight*2.20462
donnees.dataframe = data.frame(donnees, Time = donnees$Time, Sex =donnees$Sex, Weight = donnees$Weight, PoidsLivre = PoidsLivre )


