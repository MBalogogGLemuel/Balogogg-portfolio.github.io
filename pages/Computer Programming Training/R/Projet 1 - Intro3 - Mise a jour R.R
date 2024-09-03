# Importation des donnees


## Donnees electricity
path1 <- "C:/Users/georg/OneDrive/Documents/GitHub/MBalogogGLemuel.github.io/Datasets/ElectricityBill/electricbill.dat.txt"
columns1 <- c("NUM","YEAR","MOIS","BILL","TEMP","HDD","CDD","SIZE","METER","PUMP1","PUMP2","RIDER TOTAL","CONSUMPTION")
df1 <-  read.table(path1, col.names = columns1 )

## Donnees Baby-boom
path2 <- "C:/Users/georg/OneDrive/Documents/GitHub/MBalogogGLemuel.github.io/Datasets/Babyboom/babyboom.dat.txt"
columns2 <- c("TIME","SEX","WEIGHT","TIME.MIDNIGHT")
df2 <-  read.table(path2, col.names = columns2)



# Statistique descriptive (EDA)


head(df1)
str(df1)
attach(df1)
length(df1)
sum(is.na(df1)) # CHECK SI DES VALEURS NULL
summary(df1)
dim(df1)

head(df2)
str(df2)
attach(df2)
length(df2)
any(is.na(df2))
summary(df2)
dim(df2)

## Quelques calculs
## Installons la librairire **MASS** et loadons la
install.packages("MASS")
library(MASS)

x = mvrnorm(100, mu=1, Sigma=1)
plot(x,x)


# dataframe contenant les observations pour lesquelles BILL>100
# et les mois DEc-Jan-Fev

df1 <- na.omit(df1)
BILL <- na.omit(df1)
  
df1$BILL <- as.double(BILL)


condition1 = (MOIS == "Dec") # (MOIS==c("Dec","Jan","Fev"))
condition2 = (BILL>10)
condition3 = (YEAR>1995)

MOIS[condition1]
BILL[condition2]
YEAR[condition3]

Month.factor = as.factor(MONTH)
length(levels(Month.factor))

BILL[YEAR==1991]

w=rep(seq(from=1,to=10,by=2),2)
w

plot(df1$BILL,df1$CONSUMPTION, main="Scatter plot of bill vs consumption",
     xlab="Bill", ylab="Consumption",pch=21, bg="green")
regress=lm(df1$CONSUMPTION~df1$BILL)
abline (regress)
abline(h=6000)
abline(v=100)

plot(sub_df1$BILL,sub_df1$CONSUMPTION, main="Scatter plot of bill vs consumption",
     xlab="Bill", ylab="Consumption",pch=21, bg="red")
regress=lm(sub_df1$CONSUMPTION~sub_df1$BILL)
abline (regress)

plot(df1$NUM,df1$BILL,type="l",xlab="Temps",ylab="Bill",main = "Courbe de la tendance \nde la consommation")

hist(df1$BILL, main = "Bill" , xlab = "Range", ylab = "Frequency" , plot=TRUE)

boxplot(df1$BILL,main="Bill")

boxplot(df1$BILL~df1$MOIS,main="Bill")

# GROUPE DE GRAPHIQUES
# On peut aussi regrouper plusieurs graphiques ensemble en créant un tableau de graphiques:
  
par(mfrow=c(1,2))
plot(df1$BILL,df1$CONSUMPTION,xlab="Bill", ylab="Consumption")
plot(df1$TEMP,df1$CONSUMPTION,xlab="Bill", ylab="Consumption")

# Sauvegarder des graphiques
## images
jpeg("Bill_Consumption_Projet1Intro3.png")
plot(df1$BILL,df1$CONSUMPTION)
dev.off()
## fichier pdf
pdf("Bill_Consumption_Projet1Intro3.pdf")
# Premiere page du fichier pdf
plot(df1$BILL,df1$CONSUMPTION)
# Seconde page du fichier pdf
plot(df1$TEMP,df1$CONSUMPTION)
# Fermer le fichier
dev.off()

### Reponse
### 1)
sub_df1 <- df1[ (df1$BILL > 100.0) & (df1$MOIS== "Dec" | df1$MOIS =="Jan" | df1$MOIS == "Fev") , ]
Moyenne <- mean(sub_df1$BILL)
Minimum <- min(sub_df1$BILL)
Maximum <- max(sub_df1$BILL)

Moyenne
Minimum
Maximum

cor(sub_df1$BILL , sub_df1$CONSUMPTION)

### 2)
sub_df1[ seq(1,nrow(sub_df1),2) , c(1,2,4) ]



### Exercice final
# 1) Statistique descriptive de la varibale weight
summary(df2$WEIGHT)

# 2) Statistiques descriptive separement pour filles et garcon
## fille
summary( df2[ SEX == 1 , 3] )
## garcon
summary( df2[ SEX == 2 , 3] )

# 3) Faire 2 diagrammes en boite pour le poids selon le sex
jpeg("Exercice_Babyboo_Projet1Intro3.png")
boxplot(df2$WEIGHT~df2$SEX , main = "Poids", ylab = "Poids", xlab = "Sex" ) ##par(mfrow=c(1,2))
dev.off()

# 4) Proportion de filles < 3 kg
(nrow(df2[WEIGHT<3000 & SEX==1,]) / nrow(df2))*100 # FILLES
(nrow(df2[WEIGHT<3000 & SEX==2,]) / nrow(df2))*100 # GARCONS

# 5) Le poids de toutes les filles nees au moins 2 heures apres minuit
df2$WEIGHT[df2$WEIGHT >= 2*60]

# 6) Le ID de la fille avec le poids le plus faible
df2[df2$WEIGHT == min(df2$WEIGHT),]

# 7) Faire un nuage de point
plot(df2$WEIGHT~df2$TIME.MIDNIGHT, main = "Poids", ylab = "Poids", xlab = "Time Midnight")
