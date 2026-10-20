"""
Pelatihan jaringan saraf tiruan untuk klasifikasi kesegaran ikan.

Contoh kode untuk Lampiran Tugas Akhir.
Jalankan:  python3 latih_model.py
"""

import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.neural_network import MLPClassifier
from sklearn.metrics import accuracy_score, classification_report

# ----------------------------------------
# 1. Memuat data ciri dan label
#    X berukuran (jumlah_citra, 6), y berisi label kelas 0/1/2
# ----------------------------------------
X = np.load("ciri_hsv.npy")
y = np.load("label.npy")

X_latih, X_uji, y_latih, y_uji = train_test_split(
    X, y, test_size=0.2, random_state=42, stratify=y
)

# ----------------------------------------
# 2. Membangun model: 2 lapisan tersembunyi (16 dan 8 neuron)
# ----------------------------------------
model = MLPClassifier(
    hidden_layer_sizes=(16, 8),
    activation="logistic",
    learning_rate_init=0.01,
    max_iter=200,
    random_state=42,
)

# ----------------------------------------
# 3. Melatih model
# ----------------------------------------
model.fit(X_latih, y_latih)

# ----------------------------------------
# 4. Menguji dan menampilkan hasil
# ----------------------------------------
prediksi = model.predict(X_uji)
akurasi = accuracy_score(y_uji, prediksi) * 100

print(f"Akurasi pengujian: {akurasi:.2f}%")
print(classification_report(y_uji, prediksi, digits=4))
