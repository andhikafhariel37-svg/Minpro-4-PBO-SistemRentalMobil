# Mini Project 4 | Praktikum Pemrograman Berbasis Objek

## Andhika Fhariel Fadhlurrohman
## 2509116083

Sistem Manajemen Rental Mobil berbasis CLI (Command Line Interface) yang dikembangkan menggunakan bahasa pemrograman Java. Program ini dirancang untuk mengelola data armada kendaraan, jenis mobil (baik kategori Penumpang maupun Angkutan), serta transaksi penyewaan dengan mengintegrasikan arsitektur Model-View-Controller (MVC), prinsip Abstraction, Polymorphism, Encapsulation, Inheritance, serta Interface.

---

## Deskripsi Singkat Program

Sistem Rental Mobil berbasis Java CLI yang berfungsi mencatat armada kendaraan, mengelola transaksi sewa, dan menghitung total biaya secara otomatis menggunakan pola desain MVC.

---

## Prepared Statement JDBC

<img width="954" height="271" alt="image" src="https://github.com/user-attachments/assets/79e2f78b-a984-4f81-9681-7744ad79eea6" />


Kode tersebut merupakan sebuah fungsi atau metode di dalam Java (khususnya pada bagian DAO atau Data Access Object) bernama getById yang bertugas untuk mencari dan mengambil data kendaraan spesifik dari database berdasarkan parameter idMobil. Fungsinya adalah untuk menghubungkan aplikasi dengan database secara aman menggunakan PreparedStatement, memasukkan parameter ID mobil ke dalam query SQL untuk mencegah celah SQL Injection, mengeksekusi perintah tersebut, lalu membaca hasilnya melalui ResultSet apabila data kendaraan yang dicari tersedia.

---

## Penjelasan Class DAO

<img width="203" height="45" alt="image" src="https://github.com/user-attachments/assets/6f3a44cf-45b8-48a0-b3fb-25f943be59c1" />

1. KendaraanDAO.java | Class ini bertanggung jawab penuh atas segala operasi database yang berkaitan dengan tabel kendaraan.
   g
   etAllKendaraan() : Mengambil seluruh data kendaraan dari database menggunakan perintah SELECT * FROM kendaraan, lalu mengubah baris data (ResultSet) tersebut kembali menjadi objek Java berupa list Kendaraan (MobilPenumpang atau MobilAngkutan).

   getById(String idMobil): Mencari data kendaraan spesifik berdasarkan ID mobil menggunakan PreparedStatement dengan parameter tanda tanya (?) untuk mencegah risiko SQL Injection.
3. TransaksiDAO.java |  Class ini berfokus pada pengelolaan tabel transaksi_sewa.

   getAllTransaksi(): Mengambil daftar riwayat transaksi penyewaan mobil dari database.

   insertTransaksi(TransaksiSewa transaksi): Menyimpan data transaksi baru ke database menggunakan query INSERT INTO dengan
   PreparedStatement untuk mengisi data penyewa, ID mobil, lama sewa, dan total biaya secara aman.

## Proses Database & Dummy Data

<img width="762" height="167" alt="image" src="https://github.com/user-attachments/assets/b7bb1401-c92d-4638-93bb-796ac4f20bae" />
Dimulai dari pembuatan database, saya buat di laragon. Dengan cara mengetik nama database dan klik CREATE

<img width="862" height="238" alt="image" src="https://github.com/user-attachments/assets/4985f481-345d-4434-a8fd-66d4e6680ea2" />
Selanjutnya pembuatan tabel kendaraan, dengan isi: id mobil, merk, kategori, harga sewa perhari, kapasitas penumpang dan kapasitas beban ton.

<img width="1045" height="231" alt="image" src="https://github.com/user-attachments/assets/415c7c5c-6519-4239-89ab-c18ff9647ba8" />
Dan ini untuk tabel transaksi sewa, dengan isi: id transaksi, nama_penyewa, id mobil, lama sewa hari, dan total biaya

OHIYA ini kenapa pakai IF EXISTS? : Dikarenakan sebelumnya udah buat tabel namun tidak ter-capture, maka dari itu saya hapus dan saya ulang dengan menggunakan IF EXISTS untuk mencegah peumpukan tabel.

<img width="1282" height="231" alt="image" src="https://github.com/user-attachments/assets/4886fc5b-1209-414b-be13-ee359639ec41" />
Ini adalah hasil dari Dummy Data di tabel kendaraan

<img width="915" height="207" alt="image" src="https://github.com/user-attachments/assets/b115d498-3149-4255-8ea3-e1693bdff717" />
Kalau yang ini adalah Dummy Data dari tabel transaksi_sewa.
  
