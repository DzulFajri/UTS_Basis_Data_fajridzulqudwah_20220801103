-- Tabel Fakultas
CREATE TABLE `fakultas` (
    `ID_Fakultas` INT NOT NULL PRIMARY KEY,
    `Nama_Fakultas` VARCHAR(55) NOT NULL
);

-- Tabel Prodi (Program Studi)
CREATE TABLE `prodi` (
    `ID_Prodi` INT NOT NULL PRIMARY KEY,
    `Nama_Prodi` VARCHAR(55) NOT NULL,
    `fakultas` INT NOT NULL,
    INDEX (`fakultas`),
    FOREIGN KEY (`fakultas`) REFERENCES `fakultas` (`ID_Fakultas`) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabel Mata Kuliah
CREATE TABLE `matakuliah` (
    `Kode_Mk` INT NOT NULL PRIMARY KEY,
    `Nama_MK` VARCHAR(55) NOT NULL
);

-- Tabel Dosen
CREATE TABLE `dosen` (
    `ID_dosen` INT NOT NULL PRIMARY KEY,
    `Nama_dosen` VARCHAR(55) NOT NULL,
    `email` VARCHAR(55) NOT NULL,
    `MK_dosen` INT NOT NULL,
    INDEX (`MK_dosen`),
    FOREIGN KEY (`MK_dosen`) REFERENCES `matakuliah` (`Kode_Mk`) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabel Kelas
CREATE TABLE `kelas` (
    `Kode_Kelas` INT NOT NULL PRIMARY KEY,
    `Nama_kelas` VARCHAR(55) NOT NULL,
    `Lokasi_Kelas` VARCHAR(55) NOT NULL
);

-- Tabel Mahasiswa
CREATE TABLE `mahasiswa` (
    `NIM` INT NOT NULL PRIMARY KEY,
    `Nama_mahasiswa` VARCHAR(55) NOT NULL,
    `alamat` VARCHAR(55) NOT NULL,
    `prodi` INT NOT NULL,
    INDEX (`prodi`),
    FOREIGN KEY (`prodi`) REFERENCES `prodi` (`ID_Prodi`) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabel Informasi Perkuliahan
CREATE TABLE `informasi_perkuliahan` (
    `matakuliah` INT NOT NULL,
    `Dosen` INT NOT NULL,
    `Kode_Kelas` INT NOT NULL,
    `NIM` INT NOT NULL,
    `SKS` INT NOT NULL,
    `tahun` INT NOT NULL,
    `Semester` INT NOT NULL,
    INDEX (`matakuliah`),
    INDEX (`Dosen`),
    INDEX (`Kode_Kelas`),
    INDEX (`NIM`),
    FOREIGN KEY (`matakuliah`) REFERENCES `matakuliah` (`Kode_Mk`) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (`Dosen`) REFERENCES `dosen` (`ID_dosen`) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (`Kode_Kelas`) REFERENCES `kelas` (`Kode_Kelas`) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`) ON DELETE RESTRICT ON UPDATE CASCADE
);
