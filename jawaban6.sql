SELECT
	mahasiswa.NIM, 
	mahasiswa.Nama_mahasiswa, 
	prodi.Nama_Prodi,
	matakuliah.Nama_MK, 
	kelas.Nama_kelas, 
	kelas.Lokasi_Kelas, 
	dosen.Nama_dosen
FROM
	mahasiswa
	INNER JOIN
	prodi
	ON 
		mahasiswa.prodi = prodi.ID_Prodi
	INNER JOIN
	kelas
	INNER JOIN
	informasi_perkuliahan
	ON 
		kelas.Kode_Kelas = informasi_perkuliahan.Kode_Kelas AND
		mahasiswa.NIM = informasi_perkuliahan.NIM
	INNER JOIN
	matakuliah
	ON 
		informasi_perkuliahan.matakuliah = matakuliah.Kode_Mk
	INNER JOIN
	fakultas
	ON 
		prodi.fakultas = fakultas.ID_Fakultas
	INNER JOIN
	dosen
	ON 
		informasi_perkuliahan.Dosen = dosen.ID_dosen AND
		matakuliah.Kode_Mk = dosen.MK_dosen