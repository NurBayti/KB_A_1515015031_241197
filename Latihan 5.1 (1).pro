DOMAINS	
orang = orang(nama,alamat)			%parameter objek jamak yaitu orang yang argumennya (nama,alamat)
nama = nama(pertama,kedua)			%parameter dengan objek jamak nama yang argumennya (pertama,kedua)
alamat = alamat(jalan,kota_kab,propinsi)	%parameter dengan objek jamak alamat yang argumennya (jalan,kota_kab,propinsi)
jalan = jalan(nama_jalan,nomor)			%parameter dengan objek jamak jalan yang argumennya (nama_jalan,nomor)
kota_kab,propinsi,nama_jalan = string		%parameter kota_kab,propinsi,nama_jalan menggunakan tipe data string
pertama,kedua = symbol				%parameter pertama, kedua ada objek jamak orang yang argumennya (nama,alamat) dengan tipe data symbol
nomor = integer					%parameter nomor menggunakan tipe integer

GOAL
P1 = orang(nama(diena,fatihah), alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),	%Data pertama dengan format lengkap yaitu menampilkan isi variable orang dan alamat
P1 = orang(nama(_,fatihah),Alamat),							%Data akan memanggil variable alamat pada P1 yang sudah dideklarasikan pada P1 sebelumnya, dan akan mengulang										
											%memanggil alamat untuk diisikan ke setiap yang dicari selanjutnya 
P2 = orang(nama(nur,fatihah),Alamat),
write("P1=",P1),nl,									%Data P1 ini hasilnya akan sama dengan P1 pertama yang lengkap
write("P2=",P2),nl.									%Data P2 ini hasilnya menampilkan hasil P1 namun ditambahkan dengan isian alamat
											%untuk nama yang dicari selanjutnya, alamat yang ditampilkan juga sama namum berbeda untuk nama orangnya