PREDICATES					%PREDIKAT
nondeterm dapat_membeli(symbol, symbol)		%predikat dapat_membeli dengan 2 parameter bertipe data symbol
nondeterm orang(symbol)				%perdikat orang dengan 1 parameter bertipe data symbol
nondeterm mobil(symbol)				%predikat mobil dengan 1 parameter bertipe data symbol
suka(symbol, symbol)				%predikat suka dengan 2 parameter bertipe data symbol
dijual(symbol)					%predikat dijual dengan 1 parameter bertipe data symbol

CLAUSES						%ATURAN DAN FAKTA
dapat_membeli(X,Y):-				%X dapat memebeli Y jika
		orang(X), 			%X adalah orang
		mobil(Y), 			%Y adalah mobil
		suka(X,Y), 			%X menyukai Y
		dijual(Y).			%Y dijual

orang(nur).					%nur adalah orang
orang(yudi).					%yudi adalah orang
orang(dian).					%dian adalah orang
orang(heni).					%heni adalah orang

mobil(atoz).					%atoz adalah mobil
mobil(kijang).					%kijang adalah mobil

suka(dian, atoz).				%dian suka atoz
suka(yudi, pecel).				%yudi suka pecel
suka(heri, buku).				%heri suka buku
suka(nur, komputer).				%nur suka komputer

dijual(kijang).					%kijang dijual
dijual(atoz).					%atoz dijual
dijual(buku).					%buku dijual

GOAL						%TUJUAN
dapat_membeli(Siapa,Apa).			%Siapa dapat_membeli Apa ?

						%sesuai CLAUSES diatas bahwa yang dapat membeli ialah orang dan yang dibeli adalah mobil dan untuk bisa membeli haruslah orang tersebut
						%menyukai mobil dan mobil yang disukai harus dijual.
						
						%maka berdasarkan CLAUSA diatas yang dapat membeli ialah "Dian" dan yang dapat dibelinya ialah "Atoz" karena :
						%dian adalah orang
						%atoz adalah mobil
						%dian suka atoz
						%atos dijual, fakta-fakta berikut sesuai dengan CLAUSES dan GOAL yang ingin dicapai.
						