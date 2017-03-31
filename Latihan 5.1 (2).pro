DOMAINS
benda = buku(judul, pengarang) ;	%pendeklarasian parameter dan variable dengan tipe datanya masing-masing
		kuda(nama) ; 		%dimana variable benda itu dapat berupa buku dengan isian judul dan pengarang		
		kapal ;			%bisa juga berupa kuda dengan isian nama, kapal atau dapat juga berupa buku bank dengan isian saldo	
		bukubank(saldo)		
judul, pengarang, nama = symbol		
saldo = real				
PREDICATES
nondeterm milik(nama,benda)
CLAUSES		
	milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).	%Erwin memiliki buku Markesot Bertutur dan pengaranganya Emha Ainun Najib
	milik(erwin, kuda(buraq)). 					%Erwin memiliki kuda buraq
	milik(erwin, kapal). 						%Erwin memiliki kapal
	milik(erwin, bukubank(1000)). 					%Erwin memiliki bukubank dengan saldo 1000 
GOAL		
	milik(erwin, Benda). %ini berarti variable benda itu memiliki lebih dari satu bentuk atau dapat diisi dengan bermacam parameter didalamnya.
			     %variable benda disini berbentuk jamak, dengan isian yang jika dipanggil menampilkan bermacam-macam output yaitu buku, kuda, kapal dan buku bank
			     %karena semua parameter ini menggunakan variable yang sama yaitu benda. jadi semuanya dapat terpanggil dengan hanya menggunakan satu variable yang sama.