#skrypt s�u�y do anotowania skr�towego form nieregularnych
#na podstawie form regularnych
BEGIN {FS="\t"
#wyrazy regularne, wygenerowane skryptem morpher.awk
#wczytanie trwa dosyc dlugo, ale nic dziwnego!
glosfile="slownik_regularny.txt"; 
while ((getline < glosfile)  > 0){ 
	wyrazy[$1"\t"$2]=$3;
}

glosfile="slownik_nieregularny.txt"; 
while ((getline < glosfile)  > 0){ 
	nieodm[$1"\t"$2]=$3;

}


}
{if (nieodm[$1"\t"$2]=="" && wyrazy[$1"\t"$2]=="")
	{
	if (wyrazy[$3"\t"$2]!="") {
	split(wyrazy[$3"\t"$2], znaczniki, ":")
	if ($1"__END"~/[�w]szy__END/)
		print $1"\t"$2"\tpant:perf"
	else 
	if ($1"__END"~/�e__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:sg:sec:perf"
	else
	if ($1"__END"~/[^eai�]my__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:pl:pri:perf"		
	else
	if ($1"__END"~/�aby__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:sg:ter:f:?perf"		
	else
	if ($1"__END"~/�abym__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:sg:pri:f:?perf"		
	else
	if ($1"__END"~/�aby�__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:sg:sec:f:?perf"		
	else
	if ($1"__END"~/�oby__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:sg:ter:n:?perf"		
	else
	if ($1"__END"~/�by__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:sg:ter:m:?perf"		
	else
	if ($1"__END"~/�bym__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:sg:pri:m:?perf"		
	else
	if ($1"__END"~/�by�__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:sg:sec:m:?perf"		
	else	
	if ($1"__END"~/liby__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:pl:ter:m1:?perf"
	else
	if ($1"__END"~/liby�cie__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:pl:sec:m1:?perf"		
	else
	if ($1"__END"~/liby�my__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:pl:pri:m1:?perf"		
	else
	if ($1"__END"~/�yby__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:pl:ter:f.n:?perf"		
	else
	if ($1"__END"~/�yby�cie__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:pl:sec:f.n:?perf"		
	else
	if ($1"__END"~/�yby�my__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:aglt:praet:pl:pri:f.n:?perf"
	else	
	if ($1"__END"~/�em__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:sg:pri:m:?perf"
	else
	if ($1"__END"~/�e�__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:sg:sec:m:?perf"
	else
	if ($1"__END"~/�__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:sg:ter:m:?perf"
	else
	if ($1"__END"~/�am__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:sg:pri:f:?perf"
	else
	if ($1"__END"~/�a�__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:sg:sec:f:?perf"
	else
	if ($1"__END"~/�a__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:sg:ter:f:?perf"
	else
	if ($1"__END"~/�o__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:sg:ter:n:?perf"
	else
	if ($1"__END"~/li�my__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:pl:pri:m1:?perf"
	else
	if ($1"__END"~/li�cie__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:pl:sec:m1:?perf"
	else
	if ($1"__END"~/li__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:pl:ter:m1:?perf"
	else
	if ($1"__END"~/�y�my__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:pl:pri:f.n:?perf"
	else
	if ($1"__END"~/�y�cie__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:pl:sec:f.n:?perf"
	else
	if ($1"__END"~/�y__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:praet:pl:ter:f.n:?perf"
	else
	if ($1"__END"~/cie�__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:pl:sec:perf"
	else
	if ($1"__END"~/jcie__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:pl:sec:perf"
	else
	if ($1"__END"~/jmy__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:pl:pri:perf"
	else
	if ($1"__END"~/jmy�__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:pl:pri:perf"
	else
	if ($1"__END"~/[uaoi]j__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:sg:sec:perf"
	else
	if ($1"__END"~/rzej__END/ && znaczniki[1]~/verb|ppas/)
		print $1"\t"$2"\tverb:impt:sg:sec:perf"
	else
		print $1"\t"$2"\t"znaczniki[1]":irreg" 
	}
	else print $1 "\t" $2 "\tqub"
	}
}