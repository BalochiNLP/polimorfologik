#skrypt do korelowania podstawowych form s��w (bez ko�c�wek)
#z tagami
#wej�ciowy plik: polish.all w formacie ispella (nie myspella!)
BEGIN {FS="\/"}
{if (NF>1) {print $1"\t"$1"\t"$2"\t"$2"\t0\t0\t"
	if ($2~/b/) print "nie"$1"\t"$1"\t"$2"\t"$2"!\t0\t0\t"}
}