DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol
umur=integer
PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan)
nondeterm selingkuh(nama, nama)
terbunuh_dengan(nama, benda)
terbunuh(nama)
nondeterm pembunuh(nama)
motif(alasan)
ternodai(nama, zat)
milik(nama, benda)
nondeterm cara_kerja_mirip(benda, benda)
nondeterm kemungkinan_milik(nama, benda)
nondeterm dicurigai(nama)
/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES
orang(budi,55,m,tukang_kayu).
orang(aldi,25,m,pemain_sepak_bola).
orang(aldi,25,m,tukang_jagal).
orang(joni,25,m,pencopet).
selingkuh(ina,joni).
selingkuh(ina,budi).
selingkuh(siti,joni).
terbunuh_dengan(siti,pentungan).
terbunuh(siti).
motif(uang).
motif(cemburu).
motif(dendam).
ternodai(budi, darah).
ternodai(siti, darah).
ternodai(aldi, lumpur).
ternodai(joni, coklat).
ternodai(ina, coklat).
milik(budi,kaki_palsu).
milik(joni,pistol).
/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan).
cara_kerja_mirip(balok, pentungan).
cara_kerja_mirip(gunting, pisau).
cara_kerja_mirip(sepatu_bola, pentungan).
kemungkinan_milik(X,sepatu_bola):-
orang(X,_,_,pemain_sepak_bola).
kemungkinan_milik(X,gunting):-
orang(X,_,_,pekerja_salon).
kemungkinan_milik(X,Benda):-
milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
terbunuh_dengan(siti,Senjata) ,
cara_kerja_mirip(Benda,Senjata) ,
kemungkinan_milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,m,_),
selingkuh(siti,X).
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,f,_),
selingkuh(X,Lakilaki),
selingkuh(siti,Lakilaki).
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(uang),
orang(X,_,_,pencopet).
pembunuh(Pembunuh):-					%orang tersebut dapat dinyatakan sebagai seorang pembunuh ketika orang tersebut memiliki persyaratan antara lain :
orang(Pembunuh,_,_,_),					%diketahui orang tersebut memiliki nama, umur, jender dan pekerjaan
terbunuh(Terbunuh),					%dan yang terbunuh harus memiliki nama atau diketahui siapa identitasnya
Terbunuh <> Pembunuh, /* Bukan bunuh diri */		%dan yang terbunuh bukan disebabkan karena bunuh diri
dicurigai(Pembunuh),					%orang tersebut akan dicurigai sebagai pembunuh saat
ternodai(Pembunuh,Zat),					%orang tersebut ternodai dengan suatu zat
ternodai(Terbunuh,Zat).					%dan yang terbunuh juga ternodai dengan zat yang sama
GOAL
pembunuh(X).						%pembunuh diketahui adalah budi, karena budi memenuhi fakta-fakta yang ada yaitu :
							%pada predikat orang, budi memiliki nama, umur, jender dan pekerjaan yaitu (budi,55,m,tukang_kayu) yang berarti
							%budi berumur 55 tahun dengan jender m dan bekerja sebagai tukang kayu.
							%pada fakta yang ada siti satu-satunya orang yang terbunuh maka siti menempati tempat sebagai korban yang terbunuh
							%kemudian program akan membaca aturan selanjutnya yaitu dicurigai, dimana dicurigai memilki aturan sebagai berikut :
							%dicurigai(X):-			 ==> orang tersebut akan dicurigai sebagai pembunuh jika
							%terbunuh_dengan(siti,Senjata),  ==> siti menempati sebagai korban yang terbunuh, dimana siti terbunuh dengan Variable senjata
											     %dimana senjata itu adalah kaki palsu dan
							%cara_kerja_mirip(Benda,Senjata),==> cara kerjanya mirip dengan pentungan 
							%kemungkinan_milik(X,Benda).	 ==> dan pada fakta memang benar bahwa kaki palsu dimiliki oleh budi
							%dan pada aturan selanjutnya yang dicuriga dan yang menjadi korban harus ternodai dengan zat yang sama
							%pada fakta juga membenarkan bahwa budi dan siti sama-sama ternodai dengan darah.
							
							%maka disimpulkan budi adalah seorang pembunuh karena yang terbunuh satu-satunya hanyalah siti dan siti terbunuh dengan senjata yaitu kaki palsu 
							%milik budi yang cara kerjanya mirip dengan pentungan, budi dan siti juga sama-sama ternodai dengan darah.


							