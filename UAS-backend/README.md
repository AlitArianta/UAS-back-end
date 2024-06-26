UTS Back-End Web Development
Nama : I Komang Alit Arianta
NIM : 230010055
Kelas : DI231
Mata Kuliah : Back-end Webdev
Penjelasan mengenai konfigurasi sistem
Struktur Direktori
Direktori public:

'index.php' Adalah pintu gerbang utama (entry point) dari website ini. Ketika pengguna mengunjungi website, file 'index.php' akan menjadi yang pertama kali dieksekusi. Fungsinya adalah menerima permintaan HTTP dari pengguna, memeriksa jenis permintaan (GET, POST, PUT, DELETE), dan mengarahkannya ke Controller yang sesuai untuk diproses lebih lanjut. Saat ini, index.php hanya berisi header yang menampilkan pesan "XYZ Sales API End Point".

src
Controller
UsersController.php
Bertanggung jawab atas semua permintaan terkait data pengguna. Tugasnya mencakup menampilkan daftar pengguna, menambahkan pengguna baru, memperbarui data pengguna, dan menghapus data pengguna. Controller ini berinteraksi dengan UsersModel untuk mengambil atau memanipulasi data pengguna di database.

Model
UsersModel.php
Bertanggung jawab untuk berinteraksi dengan tabel users di database. Model ini berisi fungsi-fungsi untuk melakukan operasi CRUD pada data pengguna, seperti:
Mengambil daftar semua pengguna
Mengambil data pengguna berdasarkan ID
Menambahkan data pengguna baru
Memperbarui data pengguna
Menghapus data pengguna

Service
UsersService.php
Bertindak sebagai penghubung antara UsersController dan UsersModel. Service ini berisi logika bisnis yang dibutuhkan untuk memproses data pengguna sebelum atau sesudah berinteraksi dengan database.

config
database.php
Berisi konfigurasi untuk koneksi database. Informasi seperti host, nama pengguna, kata sandi, dan nama database disertakan untuk mengizinkan koneksi ke server database. File ini digunakan oleh UsersModel untuk membentuk koneksi ke database dan menjalankan operasi CRUD.

Contoh konfigurasi:

php
Salin kode
define('DB_HOST', 'localhost');
define('DB_NAME', 'simple_api');
define('DB_USER', 'rest_api_demo');
define('DB_PASS', 'rest_api_demo');

Penjelasan mengenai proyek
Menghadapi tantangan dalam memahami konsep-konsep kompleks seperti pemrosesan data dari database, manajemen koneksi, dan penggunaan PDO adalah bagian yang menantang dari proyek UTS Back-End ini. Sebagai proyek back-end pertama, sulit memahami konsep dasar dan mengimplementasikannya dengan benar adalah hal yang wajar. Untuk mengatasinya, perlu memperdalam pemahaman dengan membaca dokumentasi, menonton tutorial online, dan mencari sumber belajar lainnya seperti platform YouTube. Selain itu, mengatur waktu dengan efisien antara pekerjaan lain, tugas kuliah, dan proyek juga menjadi tantangan tersendiri. Membuat jadwal yang jelas, mengalokasikan waktu secara proporsional, dan memprioritaskan tugas penting sangat diperlukan. Selesaikan proyek secara bertahap agar tidak menumpuk di akhir. Dengan kesabaran, ketekunan, dan kemauan untuk terus belajar, tantangan dan kesulitan dalam proyek ini dapat diatasi.