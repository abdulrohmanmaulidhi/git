-- Active: 1759335006285@@127.0.0.1@3306@sekolah
-- Tampilkan semua siswa
SELECT * FROM siswa;

-- SELECT nama FROM siswa WHERE jurusan = 'IPA';
SELECT nama FROM siswa WHERE jurusan = 'IPA';

-- Tampilkan nilai rata-rata tiap siswa
SELECT s.nama, AVG(n.nilai) AS rata_nilai
FROM siswa s
JOIN nilai n ON s.id = n.siswa_id
GROUP BY s.nama;
