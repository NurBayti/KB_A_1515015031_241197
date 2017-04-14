/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/
 
domains
  list = integer* /* or whatever type you want to use */ %%mendeklarasikan list dengan tipe data integer

predicates
  length_of(list,integer,integer) - procedure (i,o,i) %%deklarasi predikat dengan parameter list sebagai input, parameter ke-2 sebagai output dan parameter ke-3 sebagai input

clauses
  length_of([], Result, Result). 		%%aturan bila list dalam keadaan kosong maka variable result pertama yaitu sebagai hasil akan bernilai sama dengan
  						%%result ke-dua yang posisinya sebagai input. jadi jika result kedua diinputkan nilai maka pada result pertama akan bernilai sama dengan result kedua
  						%%jadi list yang kosong akan bernilai sebanyak nilai counter yang diinputkan
  
  length_of([_|T],Result,Counter):-		%%counter disini berfungsi sebagai inputan dimana nilai yang diinputkan akan ditambahkan saat menghitung panjang list
	NewCounter = Counter + 1,		%%counter yang diinputkan akan ditambahkan 1 untuk mendapatkan panjang list.
	length_of(T, Result, NewCounter).

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */ 
  							%%mencari panjang list dengan couter 0
  							%%head = 1	    => 1
  							%%tail = 2 dan 3    => 2
  							%%Counter = 0
  							%%NewCounter = Counter + 1
  							%%	     = 0 + 1
  							%%	     = 1    => counter yang ditambah 1 semacam menggantikan nilai untuk mendapatkan head
  							
  							%%length_of = tail + counter
  							%%	    = 2 + 1
  							%%	    = 3
  							
  							%maka didapatkanlah panjang list sebanyak 3