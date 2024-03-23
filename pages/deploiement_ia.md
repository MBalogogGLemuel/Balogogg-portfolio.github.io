## Introduction

Le deploiement d'un modele IA que l'on a pris le soin de developper est l'operation la plus fun, puisque c'est grace a elle que l'on pourra vraiment apprecier tout ce pourquoi l'on a passe des nuits sans sommeil (et c'est peut de le dire 😊 ). Bien que fun, l'on court le risque de se perdre assez facilement dans tout ca.

Outils:
- Google colab
- VS Code
- AWS (cela necesssite des acces)
- Sage Maker (Pour emuler un environnement Jupyter sur le cloud)
- S3 (Gerer le stockage sur le cloud)

Hypothese de depart:
- Le modele IA est fonctionnel et suffisament performant

**Note**: Il ne s'agit pas pour nous ici d'expliquer comment batir un modele efficace, ca reste neamoins un point surlequel on s'attardera tres prochainement; pour la suite, a titre illustratif, on utilisera le celebre dataset MNIST

## Sauvegarder le model

Sauvegarder un model est l'etape qui suit l'entrainnement de celui-ci. A ce niveau, on suppose que notre modele est assez fiable. e

Entrainnons un modele basique pour le cas de la classification des caracteres du dataset MNIST que nous itulerons par la suite:

```python
# importation des librairies
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Dropout, Flatten
from tensorflow.keras.datasets import mnist
from tensorflow.keras.utils import to_categorical
from tensorflow.keras.layers import Conv2D, MaxPooling2D
from tensorflow.keras.losses import categorical_crossentropy
from sklearn import metrics
from tensorflow.keras import backend as K

# constantes(parametres)
img_rows, img_cols = 28, 28 # shape de l'image
num_classes = 10            # nombre de classes traitees
batch_size = 128            # nombre images par batch par (step)
epochs = 1                  # nombre epoch pour entrainnement

# chargement des donnees et splitting en train et test
(x_train, y_train), (x_test, y_test) = mnist.load_data()

# EDA (vous en parlerons dans un autre post!!!)
if K.image_data_format() == 'channels_first':
    x_train = x_train.reshape(x_train.shape[0], 1, img_rows, img_cols)
    x_test = x_test.reshape(x_test.shape[0], 1, img_rows, img_cols)
    input_shape = (1, img_rows, img_cols)
else:
    x_train = x_train.reshape(x_train.shape[0], img_rows, img_cols, 1)
    x_test = x_test.reshape(x_test.shape[0], img_rows, img_cols, 1)
    input_shape = (img_rows, img_cols, 1)

x_train = x_train.astype('float32')
x_test = x_test.astype('float32')
x_train /= 255
x_test /= 255
y_train = to_categorical(y_train, num_classes)
y_test = to_categorical(y_test, num_classes)

# creation du modele
model = Sequential()
model.add(Conv2D(32, kernel_size=(3, 3),
                 activation='relu',
                 input_shape=input_shape))
model.add(Conv2D(64, (3, 3), activation='relu'))
model.add(MaxPooling2D(pool_size=(2, 2)))
model.add(Dropout(0.25))
model.add(Flatten())
model.add(Dense(128, activation='relu'))
model.add(Dropout(0.5))
model.add(Dense(num_classes, activation='softmax'))

# compilation du modele
model.compile(loss=categorical_crossentropy,
              optimizer='adam',
              metrics=['accuracy'])

# entrainnement du modele
model.fit(x_train, y_train,
          batch_size=batch_size,
          epochs=epochs,
          verbose=1,
          validation_data=(x_test, y_test))
```
Le resultat de cet entrainnement est:
```python
469/469 [==============================] - 30s 62ms/step - loss: 0.2566 - accuracy: 0.9210 - val_loss: 0.0510 - val_accuracy: 0.9829
```
Pour visualiser le modele ainsi cree, on utilise:

```python
model.summary()
# ou
tf.keras.utils.model_plot(model)
```

**Note:** Ici, le model que l'on va deployer se trouve dans la variable `model` sous la forme de _tensor_ qui est le types de donnees manipule par TensorFlow (pas tres eloigne d'un _numpy_). Si certains concepts vous semble etrange, par de souci, poursuivez, mais pas de crainte, on y reviendra plus tard. Le but ici est d'expliquer plus en detail la phase de deploiement d'un projet IA.

