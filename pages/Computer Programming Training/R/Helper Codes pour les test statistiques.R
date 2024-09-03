# Code pour les test statistiques

# Nombre de degrés de liberté
df <- 29
# Niveau de signification
alpha <- 0.05
# Valeur critique pour un test bilatéral
t_critical_bilateral <- qt(1 - alpha / 2, df)
t_critical_bilateral
  

# Statistique de test t calculée
t_value <- 3.65
# Nombre de degrés de liberté
df <- 29
# P-valeur pour un test bilatéral
p_value_bilateral <- 2 * (1 - pt(abs(t_value), df))
p_value_bilateral