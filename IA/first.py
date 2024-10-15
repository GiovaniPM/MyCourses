import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

# Carregar o dataset MNIST
(x_train, y_train), (x_test, y_test) = keras.datasets.mnist.load_data()

# Normalizar os dados
x_train = x_train.astype("float32") / 255.0
x_test = x_test.astype("float32") / 255.0

# Criar o modelo
model = keras.Sequential([
    layers.Flatten(input_shape=(28, 28)),  # Flatten transforma a imagem 28x28 em um vetor de 784 elementos
    layers.Dense(128, activation='relu'),  # Camada densa com 128 neurônios e ativação ReLU
    layers.Dense(10, activation='softmax')  # Camada de saída com 10 neurônios (para cada dígito) e ativação softmax
])

# Compilar o modelo
model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

# Treinar o modelo
model.fit(x_train, y_train, epochs=5, validation_data=(x_test, y_test))

# Avaliar o modelo
test_loss, test_acc = model.evaluate(x_test, y_test)
print(f"Test accuracy: {test_acc}")
