# Make a comment "Ctrl + Shift + C" 
# Clear the console "Ctrl + L"



## Dataframe
# How to create dataframe
dataDataframe <- data.frame( x = c(1 , 3 , 5) , y = c(1.6 , 2.6 , 9.07) )

# Afficher les donnees crees
print( data )



## Files
# Create directory 
dir.create("destinationFolder")

# Create file
file.create("newTexFile.txt")

# Copying files
file.copy( "newTexFile.txt" , "C:/Users/georg/Desktop/Personal  training/R/newTexFileCopied.txt"  )

# Delete one file
unlink( "newTexFile.txt" )


## Matrix
# On peut jouer avec le nombre de colonnes et de lignes
dataMatrix <- matrix( c(3:8) , nrow = 2 , ncol = 2  ) # si le nombre de valeurs ne correspond pas a ;a configuration du ombre de lignes et de colonnes, le compte recommence
print(dataMatrix)

## Packages


## Arithmetique
# + - * / %% (Modulus) %/% (Integer division) 
# < > <= >= == != 
# & | (Element wise logical AND and OR) , && || (Logical AND and OR)
# ! (Logical NOT)

## Vectors
dataVector <- c(3, 4, 9)
print(dataVector)





# Exercice: 
# Créer un vecteur appelé annee de longeur 7 et le remplir 
# avec les nombres 2010 à 2016. Afficher les valeurs de ce 
# vecteur sur votre écran.

annee <- c(2010 : 2016)
print(annee)


# Exercice: 
# Vous pouvez ajouter / soustraire un nombre à un vecteur 
# (ou multiplier un vecteur par un nombre) …. Par exemple, 
# essayez de soustraire le nombre 2009 au vecteur annee en 
# tapant la commande annee-2009 et voir ce qui se passe …

annee - 2009


# Exercice: 
# Créer une variable appelée montant.dollars 
# qui prend les valeurs (55,70,100,20,15). Ensuite, créer 
# une variable appelée montant.euros qui correspond aux 
# mêmes montants, mais en euros (notez que 1 dollars canadien = 0,66 euro)

montant.dollars <- c(55, 70, 100, 20, 15)
print(montant.dollars)
print(montant)
