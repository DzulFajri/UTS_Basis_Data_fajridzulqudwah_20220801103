SELECT
	dosen.ID_dosen, 
	dosen.Nama_dosen, 
	dosen.email, 
	matakuliah.Kode_Mk, 
	matakuliah.Nama_MK
FROM
	dosen
	INNER JOIN
	matakuliah
	ON 
		dosen.MK_dosen = matakuliah.Kode_Mk