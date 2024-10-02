# Pour pourvoir evoluer, on va telecharger le 
# package approprie
lib <- c("afex", "broom", "car", "dplyr", "emmeans",
         "ggplot2", "Hmisc", "lme4", "lmerTest", 
         "marginaleffects", "MASS", "multcomp", "nlme", 
         "patchwork", "poorman", "remotes", "survminer",
         "survival", "tidyr", "tinytable")
for(pack in lib){
  if(!require(pack, quietly = TRUE)){
    install.packages(pack)
  }
}
remotes::install_github("lbelzile/hecmodstat", force = TRUE)
remotes::install_github("lbelzile/hecedsm", force = TRUE)

# Note forcer l'installation avec le drapeau : "force=TRUE"

## Seance 1
data(LC19_S1, package= "hecdsm" )

