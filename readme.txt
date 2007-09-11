README

Morfologik is a project aiming at generating Polish morphosyntactic 
dictionaries (hence the name) used for part-of-speech tagging and
part-of-speech synthesis.

LICENCE

The data comes from Polish ispell/myspell dictionary hosted at 
kurnik.pl/slownik and licenced on the terms of (inter alia) LGPL. 
Morfologik is also licenced on terms of LGPL.

FILES

1. morfologik.txt is a tab-separated file, containing the following format:

inflected-formHTbase-formHTtags

where HT means a horizontal tab.

2. polish.dict is a binary dictionary file for morphological analysis in 
fsa_morph program by Jan Daciuk 
(see http://www.eti.pg.gda.pl/katedry/kiw/pracownicy/Jan.Daciuk/personal/fsa.html), 
usable also in LanguageTool grammar checker.

3. polish_synth.dict is a binary file for grammatical synthesis, usable
in fsa_morph and in LanguageTool. To get an inflected word, use the 
following syntax in fsa_morph:

<word>|<tag>

For example:

niemiecki|adjp

gives "niemiecku+".

4. polish.info and polish_synth.info are required for using the binary
dictionaries in morfologik-stemming Java library.

TAGSET

The tagset used is roughly similar to IPI corpus tagset. See www.korpus.pl.

Morfologik, (c) 2007 Marcin Mi�kowski.