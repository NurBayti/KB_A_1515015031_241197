PREDICATES							%PREDIKAT
putra(STRING,STRING)						%predikat putra yang nantinya akan diisi sebanyak 2 pamareter yang bertipe data STRING
saudara_perempuan(STRING,STRING)				%predikat saudara_perempuan yang nantinya akan diisi sebanyak 2 pamareter yang bertipe data STRING
saudara_laki(STRING,STRING)					%predikat saudara_laki yang nantinya akan diisi sebanyak 2 pamareter yang bertipe data STRING
menikah(STRING,STRING)						%predikat menikah yang nantinya akan diisi sebanyak 2 parameter bertipe data STRING	
ayah(STRING ayah,STRING putra)					%predikat ayah yang nantinya akan diisi sebanyak 2 parameter bertipe data STRING yang bertindak sebagai seorang ayah dan putranya.
kakek(STRING kakek,STRING cucu)					%predikat kakek yang nantinya akan diisi sebanyak 2 parameter bertipe data STRING yang bertindak sebagai seorang kakek dan cucunya.
nondeterm ipar_perempuan(STRING,STRING)				%predikat ipar_perempuan yang nantinya akan diisi sebanyak 2 parameter bertipe data STRING.

CLAUSES								%FAKTA DAN ATURAN
putra("Ikhsan","Bentang").					%Ikhsan adalah putranya Bentang
saudara_perempuan("Dini","Dina").				%Dini adalah saudara perempuannya Dina
saudara_laki("Adi","Lintang").					%Adi adalah saudara laki-lakinya Lintang
menikah("Ikhsan","Dini").					%Ikhsan menikah dengan Dini
menikah("Lintang","Surga").					%Lintang menikah dengan Surga

ayah(A,B):-putra(B,A).						%A adalah ayahnya B jika B adalah putranya A
kakek(A,B):-ayah(A,C), ayah(C,B).				%A adalah kakeknya B jika A adalah ayahnya C dan C adalah ayahnya B
ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B).	%A memiliki ipar perempuan bernama B jika A menikah dengan C dan C saudara perempuannya B
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).		%A memiliki ipar perempuan bernama B jika A adalah saudara laki-lakinya C dan C menikah dengan B

GOAL								%TUJUAN
ipar_perempuan("Ikhsan",X).					%Siapa ipar perempuannya Ikhsan ?
								
								%Sesuai CLAUSES diatas, untuk mencari siapa ipar perempuan Ikhsan ialah dengan menjalankan CLAUSA berikut :
								
								% ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B).
								
								%A adalah Ikhsan
								%B adalah Dina
								%C adalah Dini
								
								%Ikhsan memiliki ipar perempuan bernama Dina jika Ikhsan menikah dengan Dini dan Dini adalah saudara perempuannya Dina
								
								%dari CLAUSES diatas maka didapatkanlah nama ipar perempuan Ikhsan yaitu Dina