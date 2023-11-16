-- Insert data into fakultas
INSERT INTO `fakultas` (`ID_Fakultas`, `Nama_Fakultas`) VALUES
(1673, 'Teknik'),
(2167, 'Ilmu komputer'),
(3279, 'Ekonomi');

-- Insert data into prodi
INSERT INTO `prodi` (`ID_Prodi`, `Nama_Prodi`, `fakultas`) VALUES
(1678, 'Teknik Informatika', 2167),
(2907, 'Manajemen', 3279),
(3342, 'Sistem Informasi', 2167),
(4178, 'Teknik Idustri', 1673),
(5342, 'Teknik Sipil', 1673);

-- Insert data into matakuliah
INSERT INTO `matakuliah` (`Kode_Mk`, `Nama_MK`) VALUES
(1, 'Kalkulus'),
(2, 'Basisdata'),
(3, 'Statistik'),
(4, 'Fisika'),
(5, 'Analisis pasar bursa');

-- Insert data into dosen
INSERT INTO `dosen` (`ID_dosen`, `Nama_dosen`, `email`, `MK_dosen`) VALUES
(2123, 'Dr. A', 'a@example.com', 1),
(2124, 'Dr. B', 'b@example.com', 2),
(2125, 'Dr. C', 'c@example.com', 3),
(2126, 'Dr. D', 'd@example.com', 4),
(2127, 'Dr. E', 'e@example.com', 5);

-- Insert data into kelas
INSERT INTO `kelas` (`Kode_Kelas`, `Nama_kelas`, `Lokasi_Kelas`) VALUES
(301, 'Kelas A', 'Gedung X, Ruang 101'),
(302, 'Kelas B', 'Gedung Y, Ruang 202'),
(303, 'Kelas C', 'Gedung Z, Ruang 303'),
(304, 'Kelas D', 'Gedung W, Ruang 404'),
(305, 'Kelas E', 'Gedung V, Ruang 505');

-- Insert data into mahasiswa
INSERT INTO `mahasiswa` (`NIM`, `Nama_mahasiswa`, `alamat`, `prodi`) VALUES
(1234, 'Ahmad Yani', 'Jl. Merdeka No. 123, Kota Ceria', 1678),
(5678, 'Budi Rahardjo', 'Jl. Harapan No. 456, Kota Damai', 2907),
(9012, 'Citra Sari', 'Jl. Makmur No. 789, Kota Damai', 3342),
(3456, 'Dewi Indah', 'Jl. Ceria No. 012, Kota Bahagia', 4178),
(7890, 'Eko Prabowo', 'Jl. Damai No. 345, Kota Ceria', 5342);



-- Insert data into informasi_perkuliahan
INSERT INTO `informasi_perkuliahan` (`matakuliah`, `Dosen`, `Kode_Kelas`, `NIM`, `SKS`, `tahun`, `Semester`) VALUES
(1, 2123, 301, 1234, 3, 2023, 1),
(2, 2124, 302, 5678, 4, 2023, 1),
(3, 2125, 303, 9012, 3, 2023, 1),
(4, 2126, 304, 3456, 4, 2023, 1),
(5, 2127, 305, 7890, 3, 2023, 1);