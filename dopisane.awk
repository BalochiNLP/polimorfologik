#program do odfiltrowania nieodmiennych wyraz�w i wyraz�w o dopisanych r�cznie
BEGIN {FS=" "
glosfile="bez_flag.txt"; #wyrazy uzyskane ze skryptu nieodmienne, czyli odfiltrowane
#z pliku ispella bez flag odmian
while ((getline < glosfile)  > 0){ 
	wyrazy[$1]=$1;
}

#zeby dobrac wlasciwe slowko... spowolni, ale trudno
glosfile="slownik_regularny.txt"; 
while ((getline < glosfile)  > 0){ 
	regularne[$1"\t"$2]=$3;
}


}
#uwaga:problem, trzeba pomija� wypadki, kiedy wyraz dopisany pokrywa si� form� z wyrazem regularnym
#dotyczy zw�aszcza wyraz�w, dla kt�rych w odm.txt NF==1
#ale niekoniecznie tylko tych - zawsze mo�na trafi� nie ten wyraz, niestety, to jest
#algorytm heurystyczny
{found = 0
if (NF==1) hasla[$1]="nieodm"
if (hasla[$1]!="nieodm")
	for (i=2; i<=NF; i++) 
	if (wyrazy[$i]!="") 
		{
		numer=0
		for (j=2;j<=NF;j++)
		{
		if ((i!=j)  && (wyrazy[$j]=="") && (regularne[$j"\t"$1]!="") && (numer==0))
			numer = j
		}
		if (hasla[$i]!="") 
			dodatek=hasla[$i]"+" 
		else
			dodatek=""
		if (numer>0)
		hasla[$i]=dodatek wyrazy[$i]"\t"$1"\t"$numer
		else
		hasla[$i]=dodatek wyrazy[$i]"\t"$1
		found++
		}
#if (found==0) print $1 "\t" $1 "\t" "wyraz nieodmienny"
		}
END {
for (n in hasla)
	if (hasla[n]!="nieodm" && hasla[n]!="") 
	{
	split(hasla[n], wyrazy, "+")
	for (j in wyrazy)
		print wyrazy[j]
	}
	
}