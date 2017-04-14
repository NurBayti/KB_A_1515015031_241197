/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %%mendeklarasikan list dengan tipe data integer

predicates
  length_of(list,integer) - procedure (i,o) %%predikat dengan nama length_of dengan parameter didalamnya berupa list (inputan) yang didekarasikan pada domain dan parameter selanjutnya bertipe data integer sebagai output

clauses
  length_of([],0).			%%aturan menyatakan bila length_of [] atau list kosong berarti list bernilai 0
  length_of([_|T],L):-			%%aturan bila length_of [_|T] atau list memiliki head dan tail 
	length_of(T,TailLength),	%%maka panjang list dihitung dari banyaknya tail ditambah 1
	L = TailLength + 1.

goal
  length_of([1,2,3],L).			%%mencari panjang list berikut
  					%%head = 1	 => 1
  					%%tail = 2 dan 3 => 2
  					%%length_of = tail + 1  => 1 disini berfungsi sebagai nilai untuk mendapatkan head pada list karna head pada list pasti 1
  					%%	    = 2 + 1
  					%%	    = 3
  					%%maka dihasilkan panjang list yaitu L = 3
