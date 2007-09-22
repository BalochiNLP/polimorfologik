# skrypt wybiera z pliku odm.txt te rzeczowniki, kt�rych formy na -u
# s� jednocze�nie formami miejscownika i wo�acza, a nie tylko
# dope�niacza, jak przy pozosta�ych rzeczownikach z flagami QSTs
#
# skrypt wykonuje filtrowanie na pliku
# slownik_regularny.txt, tj. ma wyszukiwa� form� na -u wyrazu z tablicy locvoc
# i zamienia� j� na form� poprawn�
 
BEGIN {FS="\/"
glosfile="polish.all"; 
while ((getline < glosfile)  > 0){
	if ($2~/[QSTs][QSTs][QSTs][QSTs]/) {
	 gen[$1]=$1	 
    }
    }
FS=","    
glosfile="odm.txt"; 
while ((getline < glosfile)  > 0){
 if ($0~/u,/ && $0!~/[^w]ie,/ && $0!~/y,/ && $0~/owi,/) {
  if ($1 in gen)	
	 locvoc[$1]=$1	 
    }
    }
FS="\t"    
}

{if ($2 in locvoc && $1==$2"u")
    print $1"\t"$2"\tsubst:sg:gen.loc.voc:m"
  else 
    print
}
