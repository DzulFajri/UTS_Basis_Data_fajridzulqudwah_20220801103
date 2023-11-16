SELECT
	mahasiswa.NIM, 
	CONCAT('',mahasiswa.Nama_mahasiswa) AS Mahasiswa,
	mahasiswa.alamat, 
	CONCAT('', mahasiswa.prodi) AS `code prodi`,
	matakuliah.Kode_Mk, 
	matakuliah.Nama_MK
FROM
	mahasiswa
	INNER JOIN
	informasi_perkuliahan
	ON 
		mahasiswa.NIM = informasi_perkuliahan.NIM
	INNER JOIN
	matakuliah
	ON 
		informasi_perkuliahan.matakuliah = matakuliah.Kode_Mk
	INNER JOIN
	prodi
	ON 
		mahasiswa.prodi = prodi.ID_Prodi