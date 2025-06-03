# Adaptive Cyclic Learning Rate untuk Prediksi Deret Waktu Jangka Panjang pada Model Deep Learning Berarsitektur Encoder-Decoder dan Encoder-Only

## 🧠 What is Adaptive Cyclic Learning Rate (ACLR)?

**ACLR** adalah strategi optimasi yang secara adaptif mengatur *learning rate* selama pelatihan model berdasarkan perubahan loss. Konsep utamanya adalah:  
- Saat loss menurun, maka **step size diperbesar**, menyebabkan *learning rate* berfluktuasi lebih tinggi agar proses eksplorasi parameter tetap dinamis.  
- Saat loss mulai membesar atau stagnan, maka **step size diperkecil**, membuat *learning rate* menurun lebih lambat untuk menstabilkan pembelajaran.

---

## 📁 Folder Structure

### `Encoder-Decoder/`
Berisi implementasi dan eksperimen model **Transformer** dan **Informer** yang menggunakan arsitektur encoder-decoder.  

### `FRNet+PatchTST/`
Berisi dua model:

**FRNet** dan **PatchTST**.


### `iTransformer/`
Berisi implementasi dari **iTransformer**.

---


## 🔬 Research Context

This project is a continuation of my thesis titled:

> **Adaptive Cyclic Learning Rate untuk Prediksi Deret Waktu Jangka Panjang pada Model Deep Learning Berarsitekur Encoder-Decoder dan Encoder-Only**

The research focuses on evaluating the role of ACLR in improving long-term forecasting accuracy across various deep learning architectures.

---

## 📊 Evaluation Metrics

Setiap model diuji menggunakan metrik:
- **MSE (Mean Squared Error)**
- **MAE (Mean Absolute Error)**

---

## 📌 Notes

- Model dieksekusi menggunakan batch size besar untuk memastikan siklus ACLR berjalan stabil.
- Seluruh eksperimen menggunakan tiga dataset publik: Weather, Electricity, dan Exchange Rate.

---