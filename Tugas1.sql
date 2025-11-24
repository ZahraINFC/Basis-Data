-- Nama : Zahra
-- Nim  : D0224023


MariaDB [(none)]> create database RumahSakit;
MariaDB [(none)]> use RumahSakit;
MariaDB [RumahSakit]> CREATE TABLE pasien (
    ->     id_pasien INT PRIMARY KEY,
    ->     nama_pasien VARCHAR(50),
    ->     umur INT,
    ->     jenis_kelamin VARCHAR(10)
    -> );

MariaDB [RumahSakit]> INSERT INTO pasien VALUES
    -> (1, 'Rina', 22, 'Perempuan'),
    -> (2, 'Budi', 30, 'Laki-laki'),
    -> (3, 'Sinta', 25, 'Perempuan'),
    -> (4, 'Riko', 28, 'Laki-laki'),
    -> (5, 'Alya', 19, 'Perempuan'),
    -> (6, 'Bagas', 33, 'Laki-laki'),
    -> (7, 'Nanda', 27, 'Perempuan'),
    -> (8, 'Dewi', 40, 'Perempuan'),
    -> (9, 'Fajar', 35, 'Laki-laki'),
    -> (10, 'Mira', 29, 'Perempuan'),
    -> (11, 'Danu', 31, 'Laki-laki'),
    -> (12, 'Aisyah', 21, 'Perempuan'),
    -> (13, 'Rafi', 26, 'Laki-laki'),
    -> (14, 'Keyla', 24, 'Perempuan'),
    -> (15, 'Hafiz', 38, 'Laki-laki');

MariaDB [RumahSakit]> CREATE TABLE dokter (
    ->     id_dokter INT PRIMARY KEY,
    ->     nama_dokter VARCHAR(50),
    ->     spesialis VARCHAR(30)
    -> );

MariaDB [RumahSakit]> INSERT INTO dokter VALUES
    -> (1, 'Dr. Andi', 'Umum'),
    -> (2, 'Dr. Rina', 'Anak'),
    -> (3, 'Dr. Putra', 'Bedah'),
    -> (4, 'Dr. Maya', 'Kandungan'),
    -> (5, 'Dr. Dimas', 'Saraf'),
    -> (6, 'Dr. Nia', 'Jantung'),
    -> (7, 'Dr. Yusuf', 'Kulit'),
    -> (8, 'Dr. Bella', 'THT'),
    -> (9, 'Dr. Reza', 'Gigi'),
    -> (10, 'Dr. Sari', 'Mata'),
    -> (11, 'Dr. Dani', 'Umum'),
    -> (12, 'Dr. Farah', 'Psikiater'),
    -> (13, 'Dr. Seno', 'Radiologi'),
    -> (14, 'Dr. Rika', 'Anestesi'),
    -> (15, 'Dr. Joko', 'Paru');

MariaDB [RumahSakit]> CREATE TABLE perawatan (
    ->     id_perawatan INT PRIMARY KEY,
    ->     id_pasien INT,
    ->     id_dokter INT,
    ->     jenis_perawatan VARCHAR(50),
    ->     tahun INT,
    ->     biaya INT,
    ->     FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
    ->     FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
    -> );

MariaDB [RumahSakit]> INSERT INTO perawatan VALUES
    -> (1, 1, 1, 'Pemeriksaan Umum', 2024, 150000),
    -> (2, 2, 3, 'Operasi Ringan', 2023, 850000),
    -> (3, 3, 2, 'Pemeriksaan Anak', 2022, 120000),
    -> (4, 4, 6, 'Cek Jantung', 2024, 300000),
    -> (5, 5, 8, 'Cek THT', 2023, 180000),
    -> (6, 6, 9, 'Perawatan Gigi', 2024, 250000),
    -> (7, 7, 5, 'Cek Saraf', 2021, 400000),
    -> (8, 8, 10, 'Cek Mata', 2022, 200000),
    -> (9, 9, 7, 'Perawatan Kulit', 2024, 170000),
    -> (10, 10, 12, 'Konsultasi Psikiater', 2023, 300000),
    -> (11, 11, 4, 'Pemeriksaan Kandungan', 2021, 220000),
    -> (12, 12, 11, 'Pemeriksaan Umum', 2022, 150000),
    -> (13, 13, 13, 'Cek Radiologi', 2023, 500000),
    -> (14, 14, 14, 'Bius & Observasi', 2024, 450000),
    -> (15, 15, 15, 'Cek Paru', 2022, 280000);

-- Menampilkan Isi Tabel Pasien
MariaDB [RumahSakit]> select*from pasien;
+-----------+-------------+------+---------------+
| id_pasien | nama_pasien | umur | jenis_kelamin |
+-----------+-------------+------+---------------+
|         1 | Rina        |   22 | Perempuan     |
|         2 | Budi        |   30 | Laki-laki     |
|         3 | Sinta       |   25 | Perempuan     |
|         4 | Riko        |   28 | Laki-laki     |
|         5 | Alya        |   19 | Perempuan     |
|         6 | Bagas       |   33 | Laki-laki     |
|         7 | Nanda       |   27 | Perempuan     |
|         8 | Dewi        |   40 | Perempuan     |
|         9 | Fajar       |   35 | Laki-laki     |
|        10 | Mira        |   29 | Perempuan     |
|        11 | Danu        |   31 | Laki-laki     |
|        12 | Aisyah      |   21 | Perempuan     |
|        13 | Rafi        |   26 | Laki-laki     |
|        14 | Keyla       |   24 | Perempuan     |
|        15 | Hafiz       |   38 | Laki-laki     |
+-----------+-------------+------+---------------+

-- Menampilkan Isi Tabel Dokter
MariaDB [RumahSakit]> select*from dokter;
+-----------+-------------+-----------+
| id_dokter | nama_dokter | spesialis |
+-----------+-------------+-----------+
|         1 | Dr. Andi    | Umum      |
|         2 | Dr. Rina    | Anak      |
|         3 | Dr. Putra   | Bedah     |
|         4 | Dr. Maya    | Kandungan |
|         5 | Dr. Dimas   | Saraf     |
|         6 | Dr. Nia     | Jantung   |
|         7 | Dr. Yusuf   | Kulit     |
|         8 | Dr. Bella   | THT       |
|         9 | Dr. Reza    | Gigi      |
|        10 | Dr. Sari    | Mata      |
|        11 | Dr. Dani    | Umum      |
|        12 | Dr. Farah   | Psikiater |
|        13 | Dr. Seno    | Radiologi |
|        14 | Dr. Rika    | Anestesi  |
|        15 | Dr. Joko    | Paru      |
+-----------+-------------+-----------+

-- Menampilkan Isi Tabel Perawatan
MariaDB [RumahSakit]> select*from perawatan;
+--------------+-----------+-----------+-----------------------+-------+--------+
| id_perawatan | id_pasien | id_dokter | jenis_perawatan       | tahun | biaya  |
+--------------+-----------+-----------+-----------------------+-------+--------+
|            1 |         1 |         1 | Pemeriksaan Umum      |  2024 | 150000 |
|            2 |         2 |         3 | Operasi Ringan        |  2023 | 850000 |
|            3 |         3 |         2 | Pemeriksaan Anak      |  2022 | 120000 |
|            4 |         4 |         6 | Cek Jantung           |  2024 | 300000 |
|            5 |         5 |         8 | Cek THT               |  2023 | 180000 |
|            6 |         6 |         9 | Perawatan Gigi        |  2024 | 250000 |
|            7 |         7 |         5 | Cek Saraf             |  2021 | 400000 |
|            8 |         8 |        10 | Cek Mata              |  2022 | 200000 |
|            9 |         9 |         7 | Perawatan Kulit       |  2024 | 170000 |
|           10 |        10 |        12 | Konsultasi Psikiater  |  2023 | 300000 |
|           11 |        11 |         4 | Pemeriksaan Kandungan |  2021 | 220000 |
|           12 |        12 |        11 | Pemeriksaan Umum      |  2022 | 150000 |
|           13 |        13 |        13 | Cek Radiologi         |  2023 | 500000 |
|           14 |        14 |        14 | Bius & Observasi      |  2024 | 450000 |
|           15 |        15 |        15 | Cek Paru              |  2022 | 280000 |
+--------------+-----------+-----------+-----------------------+-------+--------+
