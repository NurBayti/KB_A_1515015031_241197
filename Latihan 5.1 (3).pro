DOMAINS		
	nama = orang(symbol,symbol)				
	hari_lahir = tanggal_lahir(integer,symbol,integer) 	
	telepon = symbol 					
PREDICATES
	nondeterm daftar_telepon(nama,symbol,hari_lahir)	
								
	yang_ulang_tahun_bulan_ini
	konversi_bulan(symbol,integer)				
	cek_bulan_ulang_tahun(integer,hari_lahir)		
	cetak_orang(nama)					
CLAUSES	
	yang_ulang_tahun_bulan_ini:-					%Data akan akan diambil yang ulang tahun bulan ini
	write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl, 	%Akan di tuliskan daftar orang yg ulang tahun bulan ini
	write(" Nama Pertama\t\t Nama Kedua\n"),			%Akan di tuliskan nama yg pertama dan kedua 
	write("******************************************************"),nl,
	date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */	%Pada bulan ini
	daftar_telepon(Orang, _, Tanggal),				%Daftar telepon
	cek_bulan_ulang_tahun(Bulan_ini, Tanggal),
	cetak_orang(Orang),
	fail.								%Akhir pencarian 
	yang_ulang_tahun_bulan_ini:-
	write("\n\n Tekan sembarang tombol..."),nl,
	readchar(_).
	cetak_orang(orang(Pertama,Kedua)):-
	write(" ",Pertama,"\t\t\t ",Kedua),nl.
	cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-
	konversi_bulan(Bulan,Bulan1),
Bul = Bulan1.
	daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)).	%Januari
	daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).	%Febuari
	daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).	%Maret 
	daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).		%April
	daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).	%May 
	daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).	%Juni
	daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).	%Juni
	daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).	%Juli
	daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).	%Agustus *
	daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).	%September
	daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).	%Oktober
	daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).	%November
	daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).	%November
	daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).	%Desember
	daftar_telepon(orang(sri,sugiarti),"512-5612",tanggal_lahir(3,mar, 1935)).	%Maret
	daftar_telepon(orang(aldi,badwin),"513-5634",tanggal_lahir(13,mar, 1945)).	%Maret
	daftar_telepon(orang(gigi,gilang),"514-5656",tanggal_lahir(23,mar, 1955)).	%Maret
	daftar_telepon(orang(titi,cokelat),"515-5678",tanggal_lahir(30,mar, 1965)).	%Maret
	
	konversi_bulan(jan, 1).		%konversi nama bulan ke angka sesuai urutan bulan
	konversi_bulan(feb, 2).
	konversi_bulan(mar, 3).
	konversi_bulan(apr, 4).
	konversi_bulan(may, 5).
	konversi_bulan(jun, 6).
	konversi_bulan(jul, 7).
	konversi_bulan(aug, 8).
	konversi_bulan(sep, 9).
	konversi_bulan(oct, 10).
	konversi_bulan(nov, 11).
	konversi_bulan(dec, 12).
GOAL
	yang_ulang_tahun_bulan_ini.	%ui dan yansen karena masuk kategori ulang tahun pada bulan April, program ini berjalan sesuai dengan sistem komputer yaitu mengikuti tanggal waktu pengaksesan
					%dengan fungsi date yaitu mencakup kalender