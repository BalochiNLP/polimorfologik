#skrypt wyodr�bnia do s�ownika wyraz�w nieregularnych
#przys��wki w stopniu najwy�szym ze s�ownika znacze� kurnika
BEGIN {FS=": "}
/stopie� najwy�szy od przys��wka/{print $1"\t"$3"\tadv:sup"}