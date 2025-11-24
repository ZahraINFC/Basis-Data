-- Nama  : Zahra
-- NIM   : D0224023
Tugas 2 Menggunakan Where and Between pada Database yang Telah dibuat
1. Perawatan dengan biaya antara 150.000 sampai 300.000
MariaDB [RumahSakit]> SELECT *
    -> FROM perawatan
    -> WHERE biaya BETWEEN 150000 AND 300000;
+--------------+-----------+-----------+-----------------------+-------+--------+
| id_perawatan | id_pasien | id_dokter | jenis_perawatan       | tahun | biaya  |
+--------------+-----------+-----------+-----------------------+-------+--------+
|            1 |         1 |         1 | Pemeriksaan Umum      |  2024 | 150000 |
|            4 |         4 |         6 | Cek Jantung           |  2024 | 300000 |
|            5 |         5 |         8 | Cek THT               |  2023 | 180000 |
|            6 |         6 |         9 | Perawatan Gigi        |  2024 | 250000 |
|            8 |         8 |        10 | Cek Mata              |  2022 | 200000 |
|            9 |         9 |         7 | Perawatan Kulit       |  2024 | 170000 |
|           10 |        10 |        12 | Konsultasi Psikiater  |  2023 | 300000 |
|           11 |        11 |         4 | Pemeriksaan Kandungan |  2021 | 220000 |
|           12 |        12 |        11 | Pemeriksaan Umum      |  2022 | 150000 |
|           15 |        15 |        15 | Cek Paru              |  2022 | 280000 |
+--------------+-----------+-----------+-----------------------+-------+--------+

2. Perawatan biaya 200.000–400.000 tetapi hanya yang tahun 2023
MariaDB [RumahSakit]> SELECT *
    -> FROM perawatan
    -> WHERE biaya BETWEEN 200000 AND 400000
    ->   AND tahun = 2023;
+--------------+-----------+-----------+----------------------+-------+--------+
| id_perawatan | id_pasien | id_dokter | jenis_perawatan      | tahun | biaya  |
+--------------+-----------+-----------+----------------------+-------+--------+
|           10 |        10 |        12 | Konsultasi Psikiater |  2023 | 300000 |
+--------------+-----------+-----------+----------------------+-------+--------+

3. Pasien berjenis kelamin perempuan
MariaDB [RumahSakit]> SELECT *
    -> FROM pasien
    -> WHERE jenis_kelamin = 'Perempuan';
+-----------+-------------+------+---------------+
| id_pasien | nama_pasien | umur | jenis_kelamin |
+-----------+-------------+------+---------------+
|         1 | Rina        |   22 | Perempuan     |
|         3 | Sinta       |   25 | Perempuan     |
|         5 | Alya        |   19 | Perempuan     |
|         7 | Nanda       |   27 | Perempuan     |
|         8 | Dewi        |   40 | Perempuan     |
|        10 | Mira        |   29 | Perempuan     |
|        12 | Aisyah      |   21 | Perempuan     |
|        14 | Keyla       |   24 | Perempuan     |
+-----------+-------------+------+---------------+

4. Pasien umur 20–30
MariaDB [RumahSakit]> SELECT *
    -> FROM pasien
    -> WHERE umur BETWEEN 20 AND 30;
+-----------+-------------+------+---------------+
| id_pasien | nama_pasien | umur | jenis_kelamin |
+-----------+-------------+------+---------------+
|         1 | Rina        |   22 | Perempuan     |
|         2 | Budi        |   30 | Laki-laki     |
|         3 | Sinta       |   25 | Perempuan     |
|         4 | Riko        |   28 | Laki-laki     |
|         7 | Nanda       |   27 | Perempuan     |
|        10 | Mira        |   29 | Perempuan     |
|        12 | Aisyah      |   21 | Perempuan     |
|        13 | Rafi        |   26 | Laki-laki     |
|        14 | Keyla       |   24 | Perempuan     |
+-----------+-------------+------+---------------+
