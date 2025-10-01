-- Active: 1759335006285@@127.0.0.1@3306@sekolah
-- Insert data siswa
INSERT INTO siswa (nama, umur, jurusan)
VALUES 
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'Bahasa'),
('Eko', 18, 'IPS');

-- Insert data nilai
INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES
(1, 'Matematika', 85),
(1, 'Bahasa Inggris', 88),
(2, 'Matematika', 75),
(2, 'Ekonomi', 90),
(3, 'Fisika', 92),
(3, 'Kimia', 80),
(4, 'Sejarah', 78),
(4, 'Bahasa Indonesia', 85),
(5, 'Sosiologi', 70),
(5, 'Geografi', 82);
