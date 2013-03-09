INFORMACJA

Morfologik to projekt tworzenia polskich s�ownik�w
morfosyntaktycznych (st�d nazwa) s�u��cych do znakowania 
morfosyntaktycznego i syntezy gramatycznej.

LICENCJA

Dane pochodz� ze s�ownika alternatywnego ze strony
kurnik.pl/slownik i s� licencjonowane na licencji (m.in.) LGPL. 
Morfologik ma r�wnie� licencj� LGPL.

PLIKI

1. morfologik.txt to plik tekstowy z polami rozdzielanymi tabulatorem,
o nast�puj�cym formacie:

forma-odmienionaHTforma-podstawowaHTznaczniki

gdzie HT oznacza tabulator poziomy.

2. polish.dict to binarny plik s�ownika dla programu fsa_morph Jana Daciuka 
(zob. http://www.eti.pg.gda.pl/katedry/kiw/pracownicy/Jan.Daciuk/personal/fsa.html), 
wykorzystywany r�wnie� bezpo�rednio przez korektor gramatyczny LanguageTool.

3. polish_synth.dict to binarny plik s�ownika syntezy gramatycznej,
u�ywany w fsa_morph i LanguageTool. Aby uzyska� form� odmienion�,
nale�y u�ywa� nast�puj�cej sk�adni w zapytaniu programu fsa_morph:

<wyraz>|<znacznik>

Na przyk�ad:

niemiecki|adjp

daje "niemiecku+".

4. polish.info i polish_synth.info - pliki wymagane do u�ycia plik�w
binarnych w bibliotece morfologik-stemming.

Do wykonania skrypt�w �r�d�owych s� potrzebne nast�puj�ce pliki:

Plik:   odm.txt  - aktualny s�ownik z witryny www.kurnik.pl/slownik (s�ownik odmian)
Strona: http://www.kurnik.pl/slownik/odmiany/
Pobieranie: http://www.kurnik.org/dictionary/odm/alt-odm-<data>.tar.gz

Plik:   polish.all - ze s�ownika alternatywnego
Strona: http://www.kurnik.pl/slownik/ort/
Pobieranie: http://www.kurnik.org/dictionary/alt-ispell-pl-src.tar.bz2

Plik : pl_PL.aff (plik afiks�w)
Strona: http://www.kurnik.pl/slownik/ort/
Pobieranie: http://www.kurnik.org/dictionary/alt-myspell-pl.tar.bz2 

Nale�y te� ze strony http://www.eti.pg.gda.pl/katedry/kiw/pracownicy/Jan.Daciuk/personal/fsa_polski.html
Pobra� ftp://ftp.pg.gda.pl/pub/software/xtras-PG/fsa/fsa_current.tar.gz i zbudowa� *fsa_build
Z tego pakietu wykorzystany bedzie skrypt *morph_infix.awk*.
W pliku Makefile nale�y sprawdzi�, czy �cie�ka do pliku jest prawid�owa.

Warto pami�ta� o ustawieniu zmiennej �rodowiskowej LC_ALL na warto�� C (export LC_ALL=C). 
Ma to znaczenie dla programu sort i jest wymagane do poprawnego skompilowania s�ownika.

U�ytkownicy system�w Linux b�d� Unix powinni r�wnie� upewni� si�, �e w �adnym z plik�w wej�ciowych
(r�wnie� w tych pobranych z powy�szych lokalizacji) nie ma znak�w CR (\r).


ZNACZNIKI MORFOSYNTAKTYCZNE

Zestaw znacznik�w jest zbli�ony do zestawu korpusu IPI (www.korpus.pl).

    * adj - przymiotnik (np. "niemiecki")
    * adjp - przymiotnik poprzyimkowy (np. "niemiecku")
    * adv - przys��wek (np. "g�upio")
    * conj - sp�jnik
    * ign - ignorowana cz�� mowy
    * indecl - nieodmienna cz�� mowy
    * num - liczebnik
    * pact - imies��w przymiotnikowy czynny
    * pant - imies��w przys��wkowy uprzedni
    * pcon - imies��w przys��wkowy wsp�czesny
    * ppas - imies��w przymiotnikowy bierny
    * ppron12 - zaimek nietrzecioosobowy
    * ppron3 - zaimek trzecioosobowy
    * pred - predykatyw (np. "trzeba")
    * prep - przyimek
    * siebie - zaimek "siebie"
    * subst - rzeczownik
    * verb - czasownik

Atrybuty podstawowych form:

    * sg - liczba pojedyncza
    * pl - liczba mnoga
    * indecl - forma nieodmienna
    * irreg - forma nieregularna (nierozpoznana dok�adniej pod wzgl�dem warto�ci atrybut�w, np. subst:irreg)
    * nom - mianownik
    * gen - dope�niacz
    * acc - biernik
    * dat - celownik
    * inst - narz�dnik
    * loc - miejscownik
    * voc - wo�acz
    * pos - stopie� r�wny
    * comp - stopie� wy�szy
    * sup - stopie� najwy�szy
    * m (a tak�e, w spos�b nie do ko�ca uporz�dkowany, m1... m4) - rodzaj m�ski
    * n - rodzaj nijaki
    * f - rodzaj �e�ski
    * pri - pierwsza osoba
    * sec - druga osoba
    * tri - trzecia osoba
    * depr - forma deprecjatywna
    * aff - forma niezanegowana
    * neg - forma zanegowana
    * refl - forma zwrotna czasownika [nie wyst�puje w znacznikach IPI]
    * perf - czasownik dokonany
    * imperf - czasownik niedokonany
    * ?perf - czasownik nierozpoznany pod wzgl�dem aspektu
    * nakc - forma nieakcentowana zaimka
    * akc - forma akcentowana zaimka
    * praep - forma poprzyimkowa
    * npraep - forma niepoprzyimkowa
    * ger - rzeczownik ods�owny
    * imps - forma bezosobowa
    * impt - tryb rozkazuj�cy
    * inf - bezokolicznik
    * fin - forma nieprzesz�a
    * bedzie - forma przysz�a "by�"
    * praet - forma przesz�a czasownika (pseudoimies��w)
    * pot - tryb przypuszczaj�cy [nie wyst�puje w znacznikach IPI]

W znacznikach Morfologika nie wyst�puje i nie b�dzie wyst�powa� 
znacznik aglt, a to ze wzgl�du na inn� zasad� segmentacji wyraz�w 
(zasady IPI utrudnia�yby w ogromnym stopniu realizacj� wielu zasad 
poprawnej pisowni ��cznej i roz��cznej, gdy� stosowana w korpusie IPI 
segmentacja nie pokrywa�a si� z granic� wyrazu definiowan� przez spacj� 
lub znak przestankowy).

Morfologik, (c) 2007 Marcin Mi�kowski.