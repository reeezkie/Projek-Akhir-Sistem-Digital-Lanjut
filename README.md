# 🎮 Catch It Fast! - Game Interaktif Berbasis FPGA
> Implementasi Sistem Permainan Real-Time Menggunakan VHDL, VGA Display, dan Basys-3

[![Status Project](https://img.shields.io/badge/Status-Completed-success.svg)]()
[![Hardware / VHDL](https://img.shields.io/badge/Language-VHDL%20%2F%20FPGA-blue.svg)]()
[![Institution](https://img.shields.io/badge/Universitas-Brawijaya-red.svg)]()

Repositori ini berisi kode sumber lengkap, file *constraint* (.xdc), dan dokumentasi laporan akhir untuk proyek mata kuliah **Sistem Digital Lanjut**. Proyek ini merancang dan membangun game interaktif bertema menangkap apel (*Catch It Fast!*) secara murni menggunakan gerbang logika pada perangkat **FPGA Basys-3** tanpa bantuan CPU atau sistem operasi eksternal.

---

## 🏛️ Informasi Akademik
* **Mata Kuliah:** Sistem Digital Lanjut
* **Dosen Pengampu:** Eko Setiawan, S.T., M.T., M.Eng., Ph.D.
* **Institusi:** Fakultas Ilmu Komputer, Universitas Brawijaya (FILKOM UB)

### 👥 Tim Penyusun (Kelompok)
1. **Rezky Auliasarie** (245150300111014)
2. **Ahmadtovich Hathori Astro** (245150300111016)
3. **Agatha Triotama** (245150300111020)
4. **Zeyra Rahma Alivia** (245150301111016)
5. **Alviano Keenan Putra Renardi** (245150307111024)
6. **Delvin Nhean Olamina** (245150307111032)

---

## 💡 Konsep & Mekanisme Permainan
"Catch It Fast!" adalah permainan ketangkasan di mana pemain mengendalikan sebuah keranjang di bagian bawah layar untuk menangkap objek yang jatuh:
* **Good Apple (Apel Baik):** Memberikan tambahan **+10 poin** saat tertangkap keranjang.
* **Bad Apple (Apel Busuk):** Memberikan penalti berupa pengurangan nyawa (dari total 3 nyawa). Jika nyawa habis, permainan masuk ke state *Game Over*.
* **Fitur Tambahan:** Tombol *Pause* untuk membekukan permainan sementara, indikator visual nyawa berbentuk ikon hati (*Hearts*), latar belakang langit biru dan dekorasi semak (*bush*), serta tampilan skor *real-time*.

---

## ⚙️ Arsitektur & Komponen Sistem
Sistem dirancang dengan pendekatan modular berbasis VHDL yang terbagi menjadi beberapa blok utama:
1. **Top Level Module (`top_level.vhd`):** Mengintegrasikan seluruh komponen permainan, logika pergerakan objek, deteksi tabrakan (*collision*), serta pengaturan *state* permainan (Play, Pause, Game Over).
2. **VGA Controller (`vga_controller.vhd`):** Membangkitkan sinyal sinkronisasi horizontal (`hsync`), vertikal (`vsync`), dan koordinat piksel untuk resolusi 640x480 @ 60Hz menggunakan *pixel clock* 25 MHz.
3. **Seven Segment Display (`seven_seg_display.vhd`):** Menampilkan skor permainan dalam format heksadesimal/desimal menggunakan teknik *time-division multiplexing* pada board Basys-3.
4. **Linear Feedback Shift Register (LFSR):** Algoritma pengacak 10-bit untuk menentukan variasi posisi koordinat X jatuhnya apel secara acak.
5. **Priority Encoder (Graphics Mixer):** Mengatur lapisan visual (*layering*) dari prioritas tertinggi (Teks UI & Game Over, Ikon Hati, Keranjang & Apel, Semak, hingga Latar Belakang Langit).

---

## 📂 Struktur Repositori
```text
├── project_34/                                      # Direktori kode sumber proyek (VHDL, constraints, dll.)
├── Laporan Akhir Projek_SISDIGLAN (1).pdf           # Dokumen laporan resmi lengkap
└── README.md                                        # Dokumentasi proyek
