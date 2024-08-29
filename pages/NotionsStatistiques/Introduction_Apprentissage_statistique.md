# Modelisation statistique

## Notions de base 

### Les notions de probabilite

Soient $S$ ou $\Omega$ l'espace d'echantillonnage (encore appele l'espace d'observation); et $A$ et $B$ des sous espaces de de $\Omega$.

![Ensembles1](/images/Prob1.png)
![Ensembles2](/images/Prob2.png)

Quelques proprietes :
- $P(\Omega) = 1$
- $P(\varnothing) = 0$
- $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

On parvient ainsi a ecrire la probabilite _**Totale**_ de l'evenement $A$ dans le cas ou les paires d'evenements sont mutuellement **exclusifs** ( $E_i \cup E_j = \emptyset \ \forall i \neq j $ ) et **exhaustifs** ( $\sum_{i} P(E_i) = 1$ ) :

$$ P(A) = P(A \cap B_1) + P(A \cap B_2) + ... + P(A \cap B_n) $$
$$ P(A) = \sum_{i} P(A \cap E_i) $$

Partant de la, on parvient a ecrire 2 expressions tres utilisees afin de determiner les probabilites d'evenements dits conditionnels ( $P(A|B)$ qui se dit "Probabilite de l'evenement A sachant B" ) :

$$ P(A | B)  = \frac{ P(A \cap B) }{ P( B ) } $$

L'ecriture est _reversible_ et permet donc d'ecrire :

$$ P( B | A)  = \frac{ P(A \cap B) }{ P( A ) } $$

Les deux precedentes expressions permettent d'ecrire le __**Theoreme de Bayes**__ permettant de generaliser tout le concept de probabilite conditionnel :

$$ P( A | B)  = \frac{ P(B | A).P( A ) }{ P(B | A).P( A ) + P(B | \overline{A}).P( \overline{A} ) } $$

Ceci est illustree par les l'image ci-dessous :

![TheoremeBayes](/images/Prob3.png)

### Les varaibles aleatoires

Il s'agit d'une **variable** qui fait correspondre pour un "phenomene ou processus" dit _incertain_ ou _aleatoire_, une valeur de "reele" dite de _resultat_. Par exemple, lancer un de , tirer un boule parmi tant d'autre, jouer au poker, lancer a pile ou face, ou des phenome plus industriel comme la gestion d'une file d'attente convoyeur, dans un bureau ou sur un serveur informatique sont tous des phenomenes dit stochastisques ou aleatoire ou ecnore incertains pouvant produit un resultat qui peut-etre quantifiable...

| Processus incertain | Resultat eventuel |
|-----------|-----------|
| Lancer un des | Total de nombre affiche par lance (varie nombre de des)  |
| Tirer une boule parmi tant d'autre | Gain obtenue selon le code de coouleur |
| jouer au poker | ... |

On dit _"X est une application qui pour tout evenement de S associe un nombre reel"_; et on peut ecrire :

$$X : S \rightarrow \mathbb{R} $$

Note : Faire attention a la notation, car si X est la **_var_** (variable aleatoire relle), alors, x est la **_realitisation_** de cette var.

>> Illustration avec le lance d'un des.

- 1 Des

| #Lance(peut varier selon le nombre de des) | x (Realisation) | P(X = x) (Prob de realisation) |
|-----------|-----------|-----------|
|1|1| $\frac{1}{6}$ |
|2|2|$\frac{1}{6}$|
|3|3|$\frac{1}{6}$|
|4|4|$\frac{1}{6}$|
|5|5|$\frac{1}{6}$|
|6|6|$\frac{1}{6}$|

- 2 Des

| Combinaisons | x (Total realise) | $ P(X = x) $ (Prob de realisation) |
|--------------|---------------|------------------------------|
| (1, 1)       | 2             | $\frac{1}{36}$             |
| (1, 2), (2, 1) | 3            | $\frac{2}{36}$             |
| (1, 3), (2, 2), (3, 1) | 4    | $\frac{3}{36}$             |
| (1, 4), (2, 3), (3, 2), (4, 1) | 5 | $\frac{4}{36}$         |
| (1, 5), (2, 4), (3, 3), (4, 2), (5, 1) | 6 | $\frac{5}{36}$ |
| (1, 6), (2, 5), (3, 4), (4, 3), (5, 2), (6, 1) | 7 | $\frac{6}{36}$ |
| (2, 6), (3, 5), (4, 4), (5, 3), (6, 2) | 8 | $\frac{5}{36}$ |
| (3, 6), (4, 5), (5, 4), (6, 3) | 9 | $\frac{4}{36}$       |
| (4, 6), (5, 5), (6, 4) | 10 | $\frac{3}{36}$         |
| (5, 6), (6, 5) | 11 | $\frac{2}{36}$             |
| (6, 6)       | 12            | $\frac{1}{36}$             |

Soit un total de 36 combinaisons possible ( $C_{6}^2$ )

On rappelle que ici, la probabilite de realisation se calcule :

$$\frac{Card(s)}{Card(\Omega)} = \frac{\text{Nombre de combinaison pour une realisation donnee}}{Nombre total de combinaisons}$$


### Rappels ur les notions de distributioins de probabilite

Les distributions de probailites sont des fonctions mathematiques qui permettent de representer des phenomenes incertains par le moyen de probabilites d'obtenir une certaines realisation de ces varibales aleatoire. Ces variables peuvent cependant etre soeint **_continues_** ou **_discretes_**. Ce qui a pour consequence d'utiliser des fonction de distributions soient contues ou discretes.

#### Distribution
Il s'agit clairement de la probabilite  de realisation d'une variables aleatoire

##### Discretes
- _Fonctions de masse_
$$P(X = x) $$

Note : 
- $\sum_x P(X = x) = 1 $ : La somme de toutes les prob de realisation est egale a 1 
- $P(X = x) \geq 0 $ : La valeur de f(x) et de P(x) est toujours positive 

##### Contiues 
- _Fonctions de densite_
$$f(x) $$ 

Note : 
- $\int_{-\infty}^{+\infty} f(x) \text{ . } dx = 1 $ : La valeur de la surface sous la courbe est toujours egale a 1
- $f(x) \text{ . } dx \geq 0 $ : La valeur de f(x) est toujours positive 

#### Fonction de repartition

C'est la fonction cumulative de distribution (en anglais Cumulative Distribution Function (CDF)) , ie la fonction qui permet d'evaluer la proabilite d'avoir une realisation _**Inferieure**_ ou _**Superieur**_ a un seuil. Du fait qu'elle soit cumulative de f(x), on deduit clairement qu'elle est _strictment croissante et monontone_ a valeur positive: $$F(x) = P(X \leq x ) $$  

##### Discretes
$$F(x) = \sum_{x_i \leq x} P(X = x_i)$$

##### Contiues 
$$F(x) = \int_{-\infty}^{x} P(X = x)$$

#### Probabilite d'un interval
Pour pouvoir evaluer la probabilite d'une gamme de realisation (interval de valeurs), on se sert du caractere cumulatif de la fonction de repartition comme suit ($a \leq b$ ) :

$$P( a \leq X \leq b ) = \quad \int_{a}^{b}f(x) $$
$$ = \quad  \int_{-\infty}^{b}f(x) - \int_{-\infty}^{a}f(x) $$
$$ = \quad  F(b) - F(a)  $$


### Inferences et tests statistiques

C'est un ensemble techniques permettant a partir d'un echantillon (significatif-grand et representatif-inclusif) de deduire (ou **_inferer_**) des conclusion sur l'ensemble d'une population.

Il est important de rappeler quelques notions afin de facilite la comprehension future :
- **Grandeurs theoriques** : ensmebles de parametres statistiques renseignant sur la population ($\mu$ generalement associee a la moyenne ou $\mathbb{E(.)}$ pour parler de l'esperance). L'esperance renvoie aussi a la valeur attendue de maniere plus generale; on l'emploiera tres souvent pour parler d'essaie multiple; par exemple _"la valeur esperee apres plusieurs lances de des est 3"_.


- **Grandeurs Empiriques** : Elles se rapportent aux caracteristiques obtenue en observant un echantilon de donnees (s'assure qu'il soit suffisamment significatif et representatif); pour parler de la _moyenne empirique_, on peut ecrire $\overline{x}$

Pour mener a bien une inference, il faut suivre les etapes suivantes bien precise. Pour mieux apprehender cette approche, etudions le cas suivant :

$$\text{"Imaginons qu'une entreprise de fabrication de boulons souhaite tester si le}$$ 
$$\text{diamètre moyen de ses boulons est de 10 mm; pour ce faire, un échantillon de 30 boulons }$$ 
$$\text{est prélevé, et leur diamètre moyen est de 10,2 mm, avec un écart-type de 0,3 mm."}$$

1. **Formuler les hypothes** : Ceci consiste a definir 2 hypothese qui sous-tendent notre question de recherche, notammes HO (hypothese d'egalite = ) et H1 (hypothese de # ) . 

Exemple : 